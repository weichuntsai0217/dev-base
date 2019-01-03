FROM ubuntu:16.04

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update
RUN apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev
RUN apt-get install -y iputils-ping net-tools ftp openssh-client git vim zip python-pip

RUN echo "\nsource /usr/share/bash-completion/completions/git" >> /root/.bashrc

ADD https://raw.githubusercontent.com/weichuntsai0217/vim/master/.vimrc /root
