#!/bin/bash
#
# This script is to correct the papago identification information
#
read -p "Enter the Papago Client Id -> " TMP_UID1 
read -p "Enter the Papago Client Secret -> " TMP_PASSWD1 

UID1=$(tr -d ' ' <<< "${TMP_UID1}")
PASSWD1=$(tr -d ' ' <<< "${TMP_PASSWD1}")

### SAVE PAPAGO TRANSLATE API KEY to mac's keychain
KEY_ID_NAME=papago_userid # DO NOT MODIFY THIS LINE
KEY_PW_NAME=papago_userpw # DO NOT MODIFY THIS LINE

if [ -n "$UID1" ] && [ -n "$PASSWD1" ]; then
    security add-generic-password -a ${USER} -s ${KEY_ID_NAME} -w ${UID1}
    security add-generic-password -a ${USER} -s ${KEY_PW_NAME} -w ${PASSWD1}
    echo -e "\n>>>your identity is updated"
else
    echo -e "\n>>>The information entered is not valid"
    osascript -e 'display alert "The information entered is not valid" buttons {"OK"} default button "OK" giving up after 5' >/dev/null
fi