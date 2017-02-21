#include <fstream>
#include <iostream>
#include <memory>
#include <regex>

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

using std::uint8_t;
using std::uint16_t;
using std::uint32_t;
using std::unique_ptr;
using std::printf;

const char *SVG_HEADER_FMT =
  R"(<?xml version="1.0"?>)"
  R"(<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="16">)"
  R"(<g style="fill:black;stroke:none">)";
const char *SVG_HEADER_8 =
  R"(<?xml version="1.0">)"
  R"(<svg xmlns="http://www.w3.org/2000/svg" width="8" height="16">)";
const char *SVG_HEADER_16 =
  R"(<?xml version="1.0">)"
  R"(<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16">)";
const char *SVG_FOOTER = "</g></svg>";
const char *SVG_RECT_FMT = R"(<rect x="%d" y="%d" width="1" height="1" />)";

int g_width;
int g_code_from, g_code_to;

void print_usage(const char *argv0);
bool validate_args(const char *fname);
unique_ptr<uint8_t[][16]> load_glyphs(const std::string &fpath);
void generate_svgs_8(const unique_ptr<uint8_t[][16]> &glyphs);
void generate_svgs_16(const unique_ptr<uint8_t[][16]> &glyphs);
void generate_line(std::FILE *out, uint32_t line, int width, int row);

int main(int argc, const char *argv[])
{
  // Validate command-line arguments and initialize parameters.
  if (argc != 3) { print_usage(argv[0]); }
  g_width = atoi(argv[1]);

  std::string fpath(argv[2]);
  const char *fname = fpath.substr(fpath.size() - 13).c_str();
  if (!validate_args(fname)) { print_usage(argv[0]); }

  if (std::sscanf(fname, "%04x_%04x.fnt", &g_code_from, &g_code_to) == 2)
  { if (g_code_from > g_code_to) { print_usage(argv[0]); } }
  else
  { print_usage(argv[0]); }

  printf("Code from: U+%04X, Code to: U+%04X\n", g_code_from, g_code_to);

  auto glyphs = load_glyphs(fpath);
  std::system("mkdir -p svg");
  g_width == 8 ? generate_svgs_8(glyphs) : generate_svgs_16(glyphs);

  return 0;
}

void generate_svgs_8(const unique_ptr<uint8_t[][16]> &glyphs)
{
  using std::fprintf;
  for (int i = g_code_from; i <= g_code_to; i++)
  {
    const uint8_t (&glyph)[16] = glyphs[i - g_code_from];
    static char outname_buf[256];

    std::snprintf(outname_buf, 256, "svg/%04x.svg", i);
    outname_buf[255] = '\0';
    std::cout << "Generating " << outname_buf << "... ";

    std::FILE *out = std::fopen(outname_buf, "w");
    fprintf(out, SVG_HEADER_FMT, 8);
    for (int row = 0; row < 16; row++)
    {
      generate_line(out, glyph[row], 8, row);
    }
    fprintf(out, "%s", SVG_FOOTER);
    std::fclose(out);

    std::cout << "Done.\n";
  }
}

void generate_svgs_16(const unique_ptr<uint8_t[][16]> &glyphs)
{
  using std::fprintf;
  for (int i = g_code_from; i <= g_code_to; i++)
  {
    int index = (i - g_code_from) << 1;
    const uint8_t (&upper)[16] = glyphs[index];
    const uint8_t (&lower)[16] = glyphs[index + 1];
    static char outname_buf[256];

    std::snprintf(outname_buf, 256, "svg/%04x.svg", i);
    outname_buf[255] = '\0';
    std::cout << "Generating " << outname_buf << "... ";

    std::FILE *out = std::fopen(outname_buf, "w");
    fprintf(out, SVG_HEADER_FMT, 16);
    for (int row = 0; row < 8; row++)
    {
      uint16_t line = (upper[row*2] << 8) | upper[row*2+1];
      generate_line(out, line, 16, row);
    }
    for (int row = 0; row < 8; row++)
    {
      int line = (lower[row*2] << 8) | lower[row*2+1];
      generate_line(out, line, 16, row + 8);
    }
    fprintf(out, "%s", SVG_FOOTER);
    std::fclose(out);

    std::cout << "Done.\n";
  }
}

void generate_line(std::FILE *out, uint32_t line, int width, int row)
{
  int maxpos = width - 1;
  for (int pos = maxpos; pos >= 0; pos--)
  {
    if ((line >> pos) & 1)
    {
      fprintf(out, SVG_RECT_FMT, maxpos - pos, row);
    }
  }
}

unique_ptr<uint8_t[][16]> load_glyphs(const std::string &fpath)
{
  using len_t = typename std::ifstream::pos_type;

  len_t n_chars = g_code_to - g_code_from + 1;
  len_t expected_size = n_chars * (g_width << 1);
  std::cout << "Reading " << fpath << "...\n";
  std::cout << "Expected file size is " << expected_size << " bytes... ";
  std::ifstream fs(fpath, std::ios::out);
  fs.seekg(0, std::ios_base::end);
  auto size = fs.tellg();
  fs.seekg(0);

  if (expected_size == size)
  {
    std::cout << "Size matches.\n";
  }
  else
  {
    std::cout << "Size mismatch!\n";
    exit(1);
  }

  uint8_t *buf = new uint8_t[size];
  fs.read(reinterpret_cast<char *>(buf), size);
  fs.close();

  unique_ptr<uint8_t[][16]> glyphs(reinterpret_cast<uint8_t (*)[16]>(buf));
  return glyphs;
}

// Print guide messages when invalid arguments are provided.
void print_usage(const char *argv0)
{
  printf("%s: Usage: %s <(8|16)> <fnt-file>\n\n", argv0, argv0);
  printf("All *.fnt files must be named in the form of `xxxx_yyyy.fnt'\n"
      "where each `x' and `y' match [0-9a-f], so that `xxxx' and `yyyy' form\n"
      "a range of Unicode code points in BMP (inclusive).\n\n");
  printf("For example, `0000_007f.fnt' file is expected to contain\n"
      "glyph data of characters ranging from U+0000 to U+007F.\n");
  std::exit(1);
}

bool validate_args(const char *fname)
{
  const std::regex fname_pattern("^[0-9a-f]{4}_[0-9a-f]{4}\\.fnt$");
  std::cmatch _m;

  if (g_width != 8 && g_width != 16) { return false; }
  if (!std::regex_match(fname, _m, fname_pattern)) { return false; }
  return true;
}
