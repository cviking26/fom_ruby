FROM ubuntu:latest

RUN yes | apt-get update

RUN apt-get install -y curl

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

RUN curl -sSL https://get.rvm.io | bash -s stable --ruby

RUN /bin/bash -c "PATH=$PATH:/usr/local/rvm/scripts/rvm"

RUN yes | apt-get install rubygems

RUN yes | apt-get install nano

RUN gem install mqtt