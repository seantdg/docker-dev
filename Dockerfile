FROM debian:latest

MAINTAINER Sean Davis

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install vim tmux git ctags python3-dev python3-pip nodejs npm maven curl elinks libxml2-utils -y
RUN apt-get clean -y
RUN mkdir -p /root/.vim/swapfiles

RUN pip3 install thefuck && echo 'eval $(thefuck --alias ffs)' >> ~/.bashrc
RUN ln -s /usr/bin/nodejs /usr/bin/node

ADD ./aliases /tmp/aliases
ADD ./environment /tmp/environment
ADD ./cheatsheet /tmp/cheatsheet
RUN echo "source /tmp/aliases" >> ~/.bashrc
RUN echo "source /tmp/environment" >> ~/.bashrc

COPY .vimrc /root
COPY ./snippets/.apigeerc /root
COPY .elinks.conf /root
RUN mkdir -p /root/.vim/snippets
ADD ./snippets /root/.vim/snippets
WORKDIR /data

ENV XMLLINT_INDENT="    "

CMD ["tail", "-f", "/dev/null"]


# windows example: docker run -v %cd%:/data -it seantdg/dev bash


# Git Cheatsheet
# ===============
# Commit Graph 
# git log --graph --oneline --all --decorate
