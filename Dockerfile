# this Dockerfile sets up the command-line bootcamp Docker image
# usage:
# docker build -t "command_line_bootcamp" .
# docker-browser-server command_line_bootcamp -p 8080

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl git python build-essential nano man vim 

# create a non-root user
RUN useradd -ms /bin/bash bch709

# copy the nice dotfiles that dockerfile/ubuntu gives us:
RUN cd && cp -R .bashrc .profile /home/bch709

# setup the user directory
RUN chown -R bch709:bch709 /home/bch709

# become the bch709
USER bch709

ENV HOME /home/bch709
WORKDIR /home/bch709

# install nvm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

# change it to your required node version
ENV NODE_VERSION 5.1.0

# needed by nvm install
ENV NVM_DIR /home/bch709/.nvm

# install the specified node version and set it as the default one, install the global npm packages
RUN . ~/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && npm install --global expose-fs

# expose the filesystem - needed for the file browser and editor
# in adventure time
RUN echo "expose-fs >> .fs.out 2>> .fs.err &" >> /home/bch709/.bashrc

# more readable terminal prompt
#RUN echo "export PS1=\"\[$(tput bold)\]\[\033[38;5;75m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;232m\]@:\[$(tput sgr0)\]\[\033[38;5;9m\]\W\[$(tput sgr0)\]\[\033[38;5;232m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\"" >> /home/bch709/.bashrc

RUN echo 'export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "' >>/home/bch709/.bashrc

# some example directories for the tutorial
RUN mkdir bio_directory informatics_directory
