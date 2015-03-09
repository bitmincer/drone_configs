FROM bradrydzewski/base

USER root

WORKDIR /root
RUN apt-get install -y wget build-essential
RUN wget http://download.zeromq.org/zeromq-4.0.5.tar.gz
RUN tar xzf zeromq-4.0.5.tar.gz
WORKDIR /root/zeromq-4.0.5
RUN ./configure && make && make install
RUN ldconfig

RUN curl -sSL https://get.docker.com/ubuntu/ | sudo sh
RUN start docker

WORKDIR /home/ubuntu
USER ubuntu
ADD rbenv.sh /etc/drone.d/

# we already install ruby 2.1.1 in the base image
# so we'll comment this out for now
RUN export PATH=$PATH:/home/ubuntu/.rbenv/bin                                         && \
    cd ~/.rbenv/plugins/ruby-build                                                    && \
    git pull                                                                          && \
    export RBENV_VERSION=2.2.0                                                        && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 2.2.0                                                        && \
    rbenv rehash                                                                      && \
    rbenv global 2.2.0                                                                && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash
