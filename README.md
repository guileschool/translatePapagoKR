---
layout: post
comments: true
title: 파파고 번역기를 위한 PopClip Extension
author: mac.automator
date: 2018-02-05 20:31
tags: [자동제어,자동화,time-saver,리눅스,맥북,스마트홈,파파고,번역,AI]
---

원문 http://guileschool.com/2018/02/05/PopClip-Extension-for-papago/

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/0prZPq+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></figcaption></figure>

### 파파고란?
><a href='https://developers.naver.com/products/nmt/'>공식홈페이지</a>
<!--more-->
<figure>
<img class="width-100-height-auto" src="https://d.pr/i/r99sxO+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></figcaption></figure>

파파고(영어: papago)는 네이버가 무료로 제공하는 기계 번역 서비스이다. 이름의 유래는 에스페란토어에서 앵무새를 뜻하는 단어에서 가져왔다. NAVER LABS에서 자체 개발한 인공신경망(Artificial Neural Network) 기반 번역 서비스로 현재 사용 가능한 언어는 한국어, 영어, 일본어, 중국어, 프랑스어, 스페인어의 6개국어로, 총 30종 언어쌍의 통·번역을 제공한다. 현재, 안드로이드, iOS에서 지원을 하고있으며, PC에서도 사용이 가능하다. 네이버 웨일에서도 내장되어있다.
-출처: 위키백과-

### 팝클립이란?
><a href='http://pilotmoon.com/popclip/'>공식홈페이지</a>
<!--more-->
<figure>
<img class="width-100-height-auto" src="http://pilotmoon.com/popclip/images/Mainshot-en.png"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></figcaption></figure>

**PopClip** 은 Mac에서 마우스로 텍스트 를 선택할 때 나타납니다 . 검색 및 맞춤법 검사, 사전 및 100 개 이상의 작업을 즉시 복사하여 붙여 넣기하고 액세스하십시오

# translatePapagoKR
네이버 파파고 번역기와 팝클립 기반의 다국어 번역을 위한 팝클립(PopClip) 확장 플러그인

### 특징
- 지원 가능한 언어는 13개 정도( **번역(지원) 가능한 언어** 참고 )
- DMG 파일 타입의 설치프로그램(translatePapagoKR.dmg)을 이용하거나
 수동설치(translatePapagoKR.popclipext)를 이용할 수 있슴.   
설치 방법은 **사전 준비사항** 와 **설치** 을 참고하세요

### 번역(지원) 가능한 언어

>한국어(ko)-영어(en)  
>한국어(ko)-일본어(ja)  
>한국어(ko)-중국어 간체(zh-CN)  
>한국어(ko)-중국어 번체(zh-TW)  
>한국어(ko)-스페인어(es)  
>한국어(ko)-프랑스어(fr)  
>한국어(ko)-베트남어(vi)  
>한국어(ko)-태국어(th)  
>한국어(ko)-인도네시아어(id)  
>영어(en)-일본어(ja)  
>영어(en)-프랑스어(fr)  

자세한 설명은 <a href='https://developers.naver.com/products/nmt/'>언어 상호 번역 호환성 정보</a>

<!--more-->

### 설치환경
- 맥(혹은 맥북)
- 윈도우(x86)는 지원안함
- OSX 10.11+
- 파이썬3

### 파파고 NMT 서비스 가입
네이버 회원 가입후 <a href='https://developers.naver.com/apps/#/register?api=ppg_n2mt'>파파고 NMT 서비스 신청</a>
<!--more-->

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/h0fcO+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 가입화면</font></font></figcaption></figure>

애플리케이션 이름과 비로그인 오픈 API 서비스 환경만 입력하면 되며, 대충 입력하면 됨

### 설치
**공통설치**를 먼저하고 난 후, **자동설치**(설치프로그램을 이용한 설치)을 이용하거나, 혹은 **수동설치**를 이용할 수 있다

### 공통 설치
공통 설치는 총 4가지로서 이미 <<`homebrew`, `python3`, `pip3`, `popclip`>> 프로그램이 설치되어 있다면, 이 단계는 생략할 수 있다. 파이썬2는 지원하지 않는다. 반드시 **파이썬3**이 설치되어 있어야 한다
#### 1.Homebrew 설치
The missing package manager for macOS
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

for details here [Install Homebrew](https://brew.sh/index_ko.html)
<!--more-->

#### 2.파이썬3 설치
python3을 설치하세요
네이버 파파고는 파이썬3 기반 API을 지원합니다

```bash
$ brew install python3
```

#### 3.파이썬 패키지 추가하기
pip3을 설치하여 python 패키지 종속성을 설치하세요

```bash
$ brew install pip3
```

#### 4.PopClip App 설치

><a href='http://pilotmoon.com/popclip/'>Official site
</a>
<!--more-->

### 자동 설치( 사전 설치 )

다운로드하세요 [here](https://d.pr/f/WeUr0h+) <-- 자동설치용

[YOUTUBE(translatePapagoKR tutorials)](https://youtu.be/Z1J3QUxpTGw)

1. 설치 패키지를 내려받으세요
2. 설치를 시작하세요 
3. 필수 프로그램(brew/python3/pip3/popclip)들이 설치가 되어있고, 이 프로그램들에 특별한 문제가 없다면 설치를 계속 진행 할 수 있습니다
4. 만약 문제가 발생한다면 **각주**[^1] 을 참조하세요

### 수동 설치
 
다운로드하세요 [here](https://github.com/guileschool/translatePapagoKR/releases) <-- 수동설치용

소스리뷰 [here](https://github.com/guileschool/translatePapagoKR/blob/master/translatePapagoKR.popclipext)

- `translatePapagoKR.popclipext` 파일의 파일명을 `translatePapagoKR.zip` 으로 변경한다

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/I74HKH+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 설치준비 화면</font></font></figcaption></figure>

- 해당 디렉토리(`translatePapagoKR.zip`)내의 파일중 `(1)translate_encode.sh` `(2)translate_decode.sh` `(3)Config.plist` 을 편집한다 

[![파일 수정 작업](http://img.youtube.com/vi/bvqmMcxCQ90/0.jpg)](https://youtu.be/bvqmMcxCQ90?t=0s)
▲ 파일 수정 작업( YOUTUBE )

- 편집을 완료하고나면, 파일명(`translatePapagoKR.zip`)을 원래의 파일명(`translatePapagoKR.popclipext`)으로 다시 복원(수정)한다
- translatePapagoKR.popclipext 을 더블클릭하면 설치가 완료된다

- 사용자 정보의 입력
[YOUTUBE](https://youtu.be/rBxD_iwx61k)

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/5aRc5x+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 파파고 서비스 사용자 정보 입력</font></font></figcaption></figure>

- 이제부터 사용하면 된다

### 사용방법
단어나 문장을 **마우스**로 선택함과 동시에 **popclip** 팝업창이 뜨며, 이중 원하는 **번역** 지원 아이콘(버튼)을 클릭한다
<figure>
<img class="width-100-height-auto" src="https://d.pr/i/RTjdNm+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 파파고 번역기 이용</font></font></figcaption></figure>

### 설치 이후의 언어 변경
사용하다가 번역언어 설정의 변경이 필요할 경우, 아래 2가지 방법 중 하나를 이용한다
- 방법1. 설치 프로그램을 이용해 플러그인을 다시 설치한다

- 방법2. translatePapagoKR 플러그인의 설치 경로로 이동한 후 해당 파일을 편집한다
▼ translatePapagoKR 플러그인의 설치 경로 
현재 사용자의 홈 디렉토리(폴더)내의 "Library/Application Support/PopClip/Extensions/translatePapagoKR.popclipext" 경로

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/35FdYy+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 팝클립확장 설치 폴더</font></font></figcaption></figure>

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/Dr7l5x+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 터미널로 본 디렉토리 구조</font></font></figcaption></figure>

## 단축키를 쓰고 싶다면?
[키보드 마에스트로 프로그램](https://www.keyboardmaestro.com)이 반드시 필요합니다

[![YOUTUBE](http://img.youtube.com/vi/KxMeBvHhRmI/0.jpg)](https://youtu.be/KxMeBvHhRmI?t=0s)

▲ 키보드마에스트로 설치( YOUTUBE )

이 방법 말고 다른 방법의 지원을 원하신다면 글쎄요... 아직은 계획없습니다

[매크로파일 다운로드](https://d.pr/f/pKrww8+)
SHA256SUM
07b4353b414fcfd74c8aa785a877563cc908cbf0bf156bb17a0c1b30bac0fbd9  `Language Translator Macros.kmlibrary`
<!--more-->

[![YOUTUBE](http://img.youtube.com/vi/nDz1HVk8RKI/0.jpg)](https://youtu.be/nDz1HVk8RKI?t=0s)

▲ 매크로 데모( YOUTUBE )

#### 간단한 사용방법 
매크로파일을 다운로드 한 이후 해당 파일을 더블클릭하면 설치가 간단히 완료된다

<figure>
<img class="width-100-height-auto" src="https://d.pr/i/gp678p+"><figcaption><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">▲ 번역 매크로의 설치</font></font></figcaption></figure>


처음에 한번에 한하여 <kbd><⌘+⌃+⇧+`></kbd> 을 눌러서 번역기 기본 설정을 해 준다

[![YOUTUBE](http://img.youtube.com/vi/hiu1jZb2ABI/0.jpg)](https://youtu.be/hiu1jZb2ABIt=0s)

▲ 매크로 사용 방법( YOUTUBE )

원하는 문장이나 단어를 선택(SELECTION) 하고 KEY1 을 누르면 즉시 번역문으로 변경된다(replace)
원하는 문장이나 단어 바로 뒤에 커서를 위치시킨 상태에서 KEY2, KEY3, 혹은 KEY4 을 누르는 방식도 가능하다

KEY1은 선택한 부분을 번역

KEY2은 커서 바로 직전 단어 번역

KEY3은 컬럼1 부터 현재 커서 위치까지를 번역

KEY4은 전체 선택 번역

#### 단축키 CHEAT SHEET

| MAIN KEY | TITLE | DESCRIPTION | KEY1 | KEY2 | KEY3 | KEY4
| :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----:
| ` | Select Translator | 번역기 기본 설정 | <kbd><⌘+⌃+⇧+`></kbd> | None | None  | None
| NUM6 | Replacement | 기존 문장을 대치한다 | <kbd><⌘+6></kbd> | <kbd><⌥+⇧+6></kbd> | <kbd><⌘+⇧+6></kbd> | <kbd><⌘+⌃+⇧+6></kbd>
| NUM7 | Parentheses | 기존문장(번역문) | <kbd><⌘+7></kbd> | <kbd><⌥+⇧+7></kbd> | <kbd><⌘+⇧+7></kbd> | <kbd><⌘+⌃+⇧+7></kbd>
| NUM8 | Dash | 공백문자를 모두 '-' | <kbd><⌘+8></kbd> | <kbd><⌥+⇧+8></kbd> | <kbd><⌘+⇧+8></kbd> | <kbd><⌘+⌃+⇧+8></kbd>
| NUM9 | UnderScore | 공백문자를 모두 '_' | <kbd><⌘+9></kbd> | <kbd><⌥+⇧+9></kbd> | <kbd><⌘+⇧+9></kbd> | <kbd><⌘+⌃+⇧+9></kbd>
| NUM0 | Clipboard | 번역결과를 클립보드에 저장 | <kbd><⌘+0></kbd> | <kbd><⌥+⇧+0></kbd> | <kbd><⌘+⇧+0></kbd> | <kbd><⌘+⌃+⇧+0></kbd>
| - | Double_wildcard | 마크다운 볼드체 | <kbd><⌘+-></kbd> | <kbd><⌥+⇧+-></kbd> | <kbd><⌘+⇧+-></kbd> | <kbd><⌘+⌃+⇧+-></kbd>
| + | Backtick | 마크다운 인라인 | <kbd><⌘+=></kbd> | <kbd><⌥+⇧+=></kbd> | <kbd><⌘+⇧+=></kbd> | <kbd><⌘+⌃+⇧+=></kbd>

이 **translate_hotkey** 의 가장 큰 장점은 특정 편집기나 지정된 어플리케이션에서만 사용할 수 있지 않고, 어떤 프로그램이든지 함께 사용 가능하다는 점이다

## 도움이 필요하십니까 버그를 발견했나요?

[위키](https://github.com/guileschool/translatePapagoKR/wiki)를 참고하십시오. 문제가 발생하거나 궁금한 점이 있으면 
[문제 섹션](https://github.com/guileschool/translatePapagoKR/issues)에 게시하십시오.  시작하도록 도와 드리겠습니다

## 저작자 
Copyright © 2015 guileschool by Guile Hong (guileschool@gmail.com)

## LICENSE
이 소스는 MIT 라이센스 하에 배포됩니다. [LICENSE](https://github.com/guileschool/translatePapagoKR/blob/master/LICENSE) 을 참조

[^1]: 사전 설치(brew/python3/pip3/popclip)가 미설치 혹은 부적절할 가능성이 높다. 각 프로그램이 시스템에 설치되어 있는지 확인한다. 이 매뉴얼이나 [유튜브](https://youtu.be/Z1J3QUxpTGw)을 확인하고도 해결이 되지 않으면 [문제 섹션](https://github.com/guileschool/translatePapagoKR/issues)에 질문을 올리세요
