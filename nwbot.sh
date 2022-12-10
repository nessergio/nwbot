#!/bin/bash
API_ID=''
CHAT_ID=
SITE='8.8.8.8'
FILE='/tmp/status.nw'
status=`ping -c 1 $SITE &> /dev/null && echo success || echo fail`
old_status=`cat $FILE`
if [ "$status" != "$old_status" ]; then
	if [ "$status" == "success" ]; then
            text='%F0%9F%92%A1 %D0%A1%D0%B2%D1%96%D1%82%D0%BB%D0%BE%20%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D0%BB%D0%B8!'
        else
            text='%E2%80%BC %D0%A1%D0%B2%D1%96%D1%82%D0%BB%D0%BE%20%D0%B2%D0%B8%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D0%BB%D0%B8!'
        fi
    curl -s -X POST https://api.telegram.org/bot$API_ID/sendMessage -d chat_id=$CHAT_ID -d text="$text"
    echo $status > $FILE
fi
