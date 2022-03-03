FROM ghcr.io/amirulandalib/whatisthis:latest

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/fuck/Ultroid.git /root/fuck/ \
    && pip3 install --no-cache-dir -r root/fuck/requirements.txt \
    && pip3 install av --no-binary av

WORKDIR /root/fuck/

# start the bot
CMD ["bash", "startup"]
