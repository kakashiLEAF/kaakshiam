FROM python:slim-buster
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
RUN apt update -y && apt install -y git wget pv jq wget ffmpeg mediainfo python3-dev
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash","run.sh"]
