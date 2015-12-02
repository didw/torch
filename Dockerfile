#FROM ubuntu:14.04
FROM jupyter/notebook
MAINTAINER Jongyeol Yang <yangjy0113@gmail.com>

# Install basic packages
RUN apt-get -y install git curl

# Install torch
RUN curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
RUN git clone https://github.com/torch/distro.git ~/torch --recursive
RUN cd ~/torch; ./install.sh

# Install packages


