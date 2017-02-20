#include <bitset>
#include <fstream>
#include <memory>
#include <regex>

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

using std::uint16_t;
using bitset8  = std::bitset<8>;
using bitset16 = std::bitset<16>;

int g_width;
int g_code_from, g_code_to;

void print_usage(const char *argv0);
bool validate_args(const char *fname);
void load_glyphs(const char *fname);

int main(int argc, const char *argv[])
{
  // Validate command-line arguments and initialize parameters.
  if (argc != 3) { print_usage(argv[0]); }

  g_width = atoi(argv[1]);
  if (!validate_args(argv[2])) { print_usage(argv[0]); }

  int code_from = 0, code_to = 0;
  if (std::sscanf(argv[2], "%04x_%04x.fnt", &code_from, &code_to) == 2)
  { if (code_from > code_to) { print_usage(argv[0]); } }
  else
  { print_usage(argv[0]); }

  load_glyphs(argv[2]);

  return 0;
}

void load_glyphs(const char *fname)
{
  std::ifstream fs(fname, std::ios::in | std::ios::out);
  fs.seekg(0, std::ios_base::end);
  auto size = fs.tellg();
  fs.seekg(0);
  fs.close();
}

// Print guide messages when invalid arguments are provided.
void print_usage(const char *argv0)
{
  using std::printf;

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
  const std::regex fname_pattern { "^[0-9a-f]{4}_[0-9a-f]{4}\\.fnt$" };
  std::cmatch _m;

  if (g_width != 8 && g_width != 16) { return false; }
  if (!std::regex_match(fname, _m, fname_pattern)) { return false; }
  return true;
}
