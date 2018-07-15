FROM alpine:latest


RUN apk update

#Package installations
RUN apk --no-cache add gcc musl-dev
RUN apk add cargo
RUN apk add curl
RUN apk add gcc
RUN apk add git
RUN apk add go
RUN apk add man
RUN apk add neovim
RUN apk add nodejs
RUN apk add nodejs-npm
RUN apk add py-pip
RUN apk add py3-pip
RUN apk add python-dev
RUN apk add python2
RUN apk add python3
RUN apk add python3-dev
RUN apk add rcm
RUN apk add ruby
RUN apk add sudo
RUN apk add zsh

#Python Prerequesites

RUN pip3 install --upgrade pip
RUN pip3 install neovim
RUN pip install --upgrade pip
RUN pip install neovim


# UserSetup
RUN addgroup -S unkind && adduser -D -S -G unkind corvi
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
RUN zsh ./installer.sh ~/.cache/dein
WORKDIR /root
RUN curl -L git.io/antigen > antigen.zsh
RUN exec zsh
RUN zsh antigen.zsh
RUN echo "corvi ALL=(ALL) ALL" >> /etc/sudoers
RUN echo "%unkind ALL=(ALL) ALL" >> /etc/sudoers
RUN git clone http://github.com/amcorvi/dotfiles ~/.dotfiles
RUN rcup


