#!/bin/bash
# PAPAGO TRANSLATE(LOCALE to EN)

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
PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -s \"${TEXT}\"" # replace(한국->Korea)
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -s \"${TEXT}\" | pbcopy" # to clipboard
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -s \"${TEXT}\" | pbcopy; echo -n \"${TEXT}\"\(\`pbpaste\`\)" # 한국(Korea)
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -d- -s \"${TEXT}\"" # Korea-has-beautiful-four-seasons
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -d_ -s \"${TEXT}\"" # Korea_has_beautiful_four_seasons
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -s \"${TEXT}\" | pbcopy; echo -n **\"${TEXT}\"\(\`pbpaste\`\)**" # **한국(Korea)**
#PAPAGO_NAME="python3 $PATH_PAPAGO_PYTHON -f ${LANG1} -t ${LANG2} -s \"${TEXT}\"  | pbcopy; echo -n ${QF}\"${TEXT}\"\(\`pbpaste\`\)${QF}" # `한국(Korea)`

eval ${PAPAGO_NAME}
