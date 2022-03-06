FROM python:alpine
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
RUN apk update && apk add git wget pv jq wget ffmpeg mediainfo
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash","run.sh"]
