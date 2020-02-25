# We're using Arch Linux
FROM anggarsx/arch:bleeding

#
# Clone repo and prepare working directory
#
RUN git clone 'https://github.com/AnggaR96s/TG-UBotX.git' /root/userbot
RUN mkdir /root/userbot/bin/
RUN chmod 777 /root/userbot/
RUN chmod 777 /root/userbot/bin/
WORKDIR /root/userbot/

#
# Copies session and config (if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /root/userbot/

CMD ["python3","-m","userbot"]
