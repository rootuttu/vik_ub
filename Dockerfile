FROM ghcr.io/amirulandalib/whatisthis:latest

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/TeamUltroid/Ultroid.git /root/TeamUltroid/ \
    && pip3 install --no-cache-dir -r root/TeamUltroid/requirements.txt \
    && pip3 install av --no-binary av

WORKDIR /root/TeamUltroid/

# start the bot
CMD ["bash", "startup"]
