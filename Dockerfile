From golang:alpine
RUN apk add --no-cache python3-dev python3 gcc vim git libc-dev ctags && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install neovim && \
    rm -r /usr/lib/python*/ensurepip && \
    rm -rvf /var/cache/* /var/log/* /var/tmp/* && \
    mkdir /var/cache/apk
COPY ./_vimrc /root/.vimrc
COPY ./install.sh /root/
RUN chmod +x /root/install.sh
RUN /root/install.sh
