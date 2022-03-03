FROM ghcr.io/amirulandalib/whatisthis:latest

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    # cloning the repo and installing requirements.
    && git clone https://github.com/root-test7/vimkaraman.git /root/ROOTGAMERTG/ \
    && pip3 install --no-cache-dir -r root/ROOTGAMERTG/requirements.txt \
    && pip3 install av --no-binary av


# changing workdir
WORKDIR /root/ROOTGAMERTG/

# start the bot
CMD ["bash", "startup"]
