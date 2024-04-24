FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y curl unzip wget sudo

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - &&\
apt-get install -y nodejs

ENV TZ=Asia/Tokyo LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja

RUN curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s

