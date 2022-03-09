FROM ghcr.io/jamesdarke/anshu2ul:latest

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# install requirements
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install av --no-binary av

# changing workdir
WORKDIR /root/TeamUltroid/

# start the bot1
CMD ["bash", "startup"]
