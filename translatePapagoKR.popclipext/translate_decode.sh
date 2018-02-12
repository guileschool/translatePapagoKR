#!/bin/bash
# PAPAGO TRANSLATE(EN to LOCALE)

### Supported Language
#한국어 ko
#영어 en
#일본어 ja
#중국어(간체) zh-CN
#중국어(번체) zh-TW
#스페인어 es
#프랑스어 fr
#베트남어 vi
#태국어 th
#인도네시아어 id

LANG1="ko" #<--- default your language(locale)
LANG2="en" #<--- default 2nd language

KMVAR_CLIP=$(echo -n "$POPCLIP_TEXT")
export KMVAR_CLIP
TEXT=$(perl -CS nfd2nfc.pl)
PATH_PAPAGO_PYTHON="papago.py"

export QF='\`'
PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -s \"${TEXT}\"" # replace(Korea->한국)
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -s \"${TEXT}\" | pbcopy" # to clipboard
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -s \"${TEXT}\" | pbcopy; echo -n \"${TEXT}\"\(\`pbpaste\`\)" # Korea(한국)
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -d- -s \"${TEXT}\"" # 대한민국은-아름다운-사계절을-가졌다
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -d_ -s \"${TEXT}\"" # 대한민국은_아름다운_사계절을_가졌다
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -s \"${TEXT}\" | pbcopy; echo -n **\"${TEXT}\"\(\`pbpaste\`\)**" # **Korea(한국)**
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG2} -t ${LANG1} -s \"${TEXT}\"  | pbcopy; echo -n ${QF}\"${TEXT}\"\(\`pbpaste\`\)${QF}" # `Korea(한국)`

eval ${PAPAGO_NAME}
