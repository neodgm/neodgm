defmodule NeoDGM.NameTable do
  require TTFLib.NameTableBuilder
  import TTFLib.NameTableBuilder

  ofl = File.read!(Path.join(File.cwd!(), "ofl_raw.txt"))
  ver = Version.parse!(Mix.Project.config()[:version])
  version_str = "Version #{ver.major}.#{ver.minor}#{ver.patch}"

  copyright_en = """
  Original font was released under the public domain by Jungtae Kim \
  in 1990s. \
  Conversion and additional character design by Dalgona. \
  <dalgona@hontou.moe>\
  """

  copyright_ko = """
  원본 글꼴은 1990년대에 김중태 한글문화원 원장에 의해 퍼블릭 \
  도메인으로 공개되었습니다. \
  변환 및 추가적인 문자 디자인: Dalgona. <dalgona@hontou.moe>\
  """

  name_table do
    platform :macintosh do
      encoding :roman do
        language :en do
          copyright copyright_en
          family "NeoDunggeunmo"
          subfamily "Regular"
          full_name "NeoDunggeunmo Regular"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license ofl
          license_url "https://scripts.sil.org/OFL"
        end
      end
    end

    platform :windows do
      encoding :unicode_bmp do
        language :en_us do
          copyright copyright_en
          unique_id "Dalgona : NeoDunggeunmo : 2019"
          family "NeoDunggeunmo"
          subfamily "Regular"
          full_name "NeoDunggeunmo Regular"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license ofl
          license_url "https://scripts.sil.org/OFL"
        end

        language :ko_kr do
          copyright copyright_ko
          family "Neo둥근모"
          subfamily "보통"
          full_name "Neo둥근모 보통"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license ofl
          license_url "https://scripts.sil.org/OFL"
        end
      end
    end
  end
end
