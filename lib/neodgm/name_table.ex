defmodule NeoDGM.NameTable do
  require TTFLib.NameTableBuilder
  import TTFLib.NameTableBuilder

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

  license_en = """
  This font software may be used, studied, modified, embedded and \
  redistributed under the SIL Open Font License 1.1.\
  """

  license_ko = """
  이 폰트 소프트웨어는 SIL Open Font License 1.1에서 허용하는 범위 내에서 \
  사용, 연구, 수정, 임베드 및 재배포될 수 있습니다.\
  """

  name_table "code" do
    platform :macintosh do
      encoding :roman do
        language :en do
          copyright copyright_en
          family "NeoDunggeunmo Code"
          subfamily "Regular"
          full_name "NeoDunggeunmo Code"
          version version_str
          postscript_name "NeoDunggeunmoCode-Regular"
          license license_en
          license_url "https://scripts.sil.org/OFL"
        end
      end
    end

    platform :windows do
      encoding :unicode_bmp do
        language :en_us do
          copyright copyright_en
          unique_id "Dalgona : NeoDunggeunmo Code : 2019"
          family "NeoDunggeunmo Code"
          subfamily "Regular"
          full_name "NeoDunggeunmo Code"
          version version_str
          postscript_name "NeoDunggeunmoCode-Regular"
          license license_en
          license_url "https://scripts.sil.org/OFL"
        end

        language :ko_kr do
          copyright copyright_ko
          family "Neo둥근모 Code"
          subfamily "보통"
          full_name "Neo둥근모 Code"
          version version_str
          postscript_name "NeoDunggeunmoCode-Regular"
          license license_ko
          license_url "https://scripts.sil.org/OFL"
        end
      end
    end
  end

  name_table _ do
    platform :macintosh do
      encoding :roman do
        language :en do
          copyright copyright_en
          family "NeoDunggeunmo"
          subfamily "Regular"
          full_name "NeoDunggeunmo"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license license_en
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
          full_name "NeoDunggeunmo"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license license_en
          license_url "https://scripts.sil.org/OFL"
        end

        language :ko_kr do
          copyright copyright_ko
          family "Neo둥근모"
          subfamily "보통"
          full_name "Neo둥근모"
          version version_str
          postscript_name "NeoDunggeunmo-Regular"
          license license_ko
          license_url "https://scripts.sil.org/OFL"
        end
      end
    end
  end
end
