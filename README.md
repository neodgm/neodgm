# Neo둥근모

![데모 이미지](https://dalgona.github.io/neodgm/assets/images/neodgm_new_demo.png)

**Neo둥근모**는 DOS용 비트맵 한글 글꼴인 "둥근모꼴"을 모든 환경에서 사용할 수
있도록 트루타입 글꼴로 변환하여 만든 글꼴입니다.

## 소개

"둥근모꼴"은 1990년대에 김중태 IT문화원 원장이 제작하고 퍼블릭 도메인으로 배포한
DOS용 비트맵 한글 글꼴이며, 특유의 미려한 글자 모양 덕분에 지금까지도 곳곳의
전광판 등에서 볼 수 있습니다. Neo둥근모는 이 비트맵 글꼴을 여러 환경에서 사용할
수 있도록 트루타입 형식으로 변환하고, 여기에 원본 글꼴에는 없는 기호들을
추가하여 만든 글꼴입니다.

자세한 내용과 Neo둥근모에서 제공하는 모든 문자에 대한 목록은
[이 웹사이트](http://dalgona.github.io/neodgm)에서 확인해 주세요.

## 내려받기

이 저장소에는 원본 비트맵 글꼴과 TTF 생성 도구의 소스만 포함되어 있습니다.
글꼴을 받으시려면 [Releases](https://github.com/Dalgona/neodgm/releases)를
이용해 주세요.

## 패키지 관리자를 통해 설치하기

> **주의:**
>
> 아래 패키지는 공식적으로 지원되지 않으며, 글꼴의 최신 버전을 곧바로 반영하지
> 않을 수도 있습니다. 또한, 아래 방법으로 글꼴을 설치하여 사용했을 때 발생한
> 문제에 대해서 Neo둥근모의 개발자는 책임을 지지 않습니다. 커뮤니티 패키지에
> 관한 문의는 각 패키지의 유지보수 담당자에게 직접 해 주시기 바랍니다.

현재 아래 플랫폼에서 패키지 관리자를 통해 손쉽게 글꼴을 설치할 수 있습니다.

### Arch Linux

AUR (Arch User Repository)에서 `ttf-neodgm` 패키지를 설치하세요.

```bash
# Git
$ git clone https://aur.archlinux.org/ttf-neodgm.git
$ cd ttf-neodgm
$ makepkg -si
```

```bash
# AUR Helpers (yay for example)
$ yay -S ttf-neodgm
```

이 AUR 패키지는 [@gaeulbyul](https://github.com/gaeulbyul) 님께서 제작해
주셨습니다. 💕

### Homebrew (macOS 등)

Homebrew Cask를 통해 패키지를 설치할 수 있습니다.

```bash
$ brew tap homebrew/cask-fonts

$ brew cask install font-neodunggeunmo
# 또는,
$ brew cask install font-neodunggeunmo-code
```

이 Cask는 [@nyeong](https://github.com/nyeong) 님께서 제작해 주셨습니다. 💕

## 직접 빌드하기

대부분의 경우에는 이미 빌드된 글꼴 파일을 다운로드 받아서 사용하는 것으로도
충분합니다. 소스 코드를 수정하고 글꼴 파일을 직접 빌드해 보고 싶은 분들은 아래
과정에 따라 주시기 바랍니다.

1. Neo둥근모의 소스는 Elixir 프로그래밍 언어로 작성되어 있습니다. [Elixir
  웹 사이트](https://elixir-lang.org)에서 여러분이 사용하고 있는 운영 체제에
  맞는 Elixir 버전을 설치하세요.

1. Git을 사용하여 이 저장소를 복제하세요.

    ```sh
    $ git clone https://github.com/Dalgona/neodgm.git
    ```

1. 아래 명령을 입력하여 TTF 파일을 빌드하세요.

    ```sh
    $ mix deps.get

    $ MIX_ENV=prod mix build_font [--variant code]
    ```

1. 현재 작업 디렉토리에 `neodgm[_<variant_name>].ttf` 파일이 생성됩니다.

## 글꼴 사용 가이드라인

Neo둥근모를 일반적인 PC 모니터에 표시될 컨텐츠를 제작하는 데 사용하는 경우에는
아래 링크에서 설명하는 가이드라인에 최대한 따라 주어야 최상의 결과물을 얻을 수
있습니다.

https://dalgona.dev/neodgm/guides.html

## 문의

내려받은 글꼴 파일에 문제가 있는 경우, 글꼴 빌드 프로그램에 문제나 개선 사항이
있는 경우, 또는 우선적으로 추가되었으면 하는 문자나 기타 의견이 있는 경우에는
망설이지 말고 Issue를 제출해 주세요!

## 라이선스

Neo둥근모 글꼴 파일과 원본 비트맵 데이터 및 글꼴 파일을 생성하는 프로그램과 그
소스 코드는 SIL Open Font License 1.1 하에 배포됩니다. SIL Open Font License
1.1의 전체 내용은 `LICENSE.md`에 수록되어 있습니다.

**Neo둥근모 또는 Neo둥근모 Code 글꼴은 위 라이선스에서 명시하는 범위 및 조건
내에서 상업적 또는 비 상업적 용도로 어디서든 자유롭게 이용하실 수 있으며,
이를 위해 별도로 서면 문의 등을 하실 필요가 없습니다. [그냥 자유롭게 다운로드
받아 사용해 주세요.](https://github.com/Dalgona/neodgm/releases)**
