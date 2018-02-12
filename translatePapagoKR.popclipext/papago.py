#!/usr/bin/python
#-*- coding: utf-8 -*-
#

# 네이버 Papago NMT
import os
import sys
import urllib.request
import getopt
import unittest, time, re
import json

###
## 나의 파파고 정보
# https://developers.naver.com/apps/#/myapps

YOUR_CLIENT_ID="Enter the Papago user id"
YOUR_CLIENT_SECRET="Enter Papago user secret access code"

LANG_FROM=""
LANG_TO=""
DASH_CHAR=""
MY_TEXT=""

REPLACE_DASH=False

sys.argv

class Untitled(unittest.TestCase):
    def setUp(self):
        pass

    def test_untitled(self):
        client_id=YOUR_CLIENT_ID
        client_secret=YOUR_CLIENT_SECRET

        # exception
        if(client_id==""):
                print (" \
                Check your papago Infomation \n\
                ")
                sys.exit(2)

        # exception
        if(client_secret==""):
                print (" \
                Check your papago Infomation \n\
                ")
                sys.exit(2)

        encText = urllib.parse.quote(MY_TEXT)
        data = "source="+ LANG_FROM + "&target=" + LANG_TO + "&text=" + encText
        url = "https://openapi.naver.com/v1/papago/n2mt"
        request = urllib.request.Request(url)
        request.add_header("X-Naver-Client-Id",client_id)
        request.add_header("X-Naver-Client-Secret",client_secret)
        response = urllib.request.urlopen(request, data=data.encode("utf-8"))
        rescode = response.getcode()
        if(rescode==200):
            response_body = response.read()
            content = json.loads(response_body.decode('utf-8'))
            translated_text = content.get('message')['result']['translatedText']

            if REPLACE_DASH is True:
                formattedString=translated_text.replace(" ", DASH_CHAR)
                print (formattedString, end='')
            else:
                print (translated_text, end='')

        else:
            print("Error Code:" + rescode)


if __name__ == "__main__":
        try:
                opts, args = getopt.getopt(sys.argv[1:],"hf:t:d:s:")
        except getopt.GetoptError:
                print (" \
                Usage2: python papago_gs.py \n\
                -f ko \n\
                -t en \n\
                -s 'my text is here' \n\
                -d dash(*option) \n\
                ")
                sys.exit(2)

        for opt, arg in opts:
                if opt == '-h':
                        print (" \
Usage1: python papago_gs.py \n\
-f ko \n\
-t en \n\
-s 'my text is here' \n\
-d dash(*option) \n\
")
                        sys.exit()
                elif opt in ("-f", "F"):
                        LANG_FROM= arg
                elif opt in ("-t", "T"):
                        LANG_TO= arg
                elif opt in ("-s", "S"):
                        MY_TEXT= arg
                elif opt in ("-d", "D"):
                        DASH_CHAR= arg
                        REPLACE_DASH= True

        unittest.main(argv=[sys.argv[0]])
