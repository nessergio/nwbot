# nwbot

1. Open chat with https://t.me/BotFather
2. 
   - /start
   - /newbot
   - name the bot, it must end with "Bot"
   - When the bot is created, you will receive message with API key in format ###:###########. Copy it to clipboard. Also paste it in nwbot.sh script after API_ID=
   - /setuserpic to change bot image
   - /setname to change name
3. Create a new telegram group. Write a simple message there
4. Add your bot to the group
5. In browser, go to https://api.telegram.org/bot{{past your api key here}}/getUpdates
   Search for group chat id. It must start with "-". Copy it and paste to nwbot.sh script after CHAT_ID=
6. Change host address after SITE= in nwbot.sh
7. Change temporary file path if needed after FILE=
8. Test bot by running nwbot.sh
9. Add task to crontab to run nwbot.sh on needed intervals (crontab -e). EXAMPLE: * * * * * bash /root/nwbot.sh

   
