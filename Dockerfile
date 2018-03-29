From golang:alpine
RUN apk add --no-cache python3-dev python3 gcc vim git libc-dev && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install neovim && \
    rm -r /usr/lib/python*/ensurepip && \
    rm -rvf /var/cache/* /var/log/* /var/tmp/* && \
    mkdir /var/cache/apk
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN cp /usr/bin/python3 /bin/
ENV HTTPS_PROXY=http://hexin:hx300033@192.168.0.1:88 HTTP_PROXY=http://hexin:hx300033@192.168.0.1:88
RUN git config --global https.proxy http://hexin:hx300033@192.168.0.1:88
RUN git config --global http.proxy http://hexin:hx300033@192.168.0.1:88
COPY ./_vimrc /root/.vimrc
RUN vim -c PluginInstall -c q -c q 
RUN go get github.com/klauspost/asmfmt/cmd/asmfmt
RUN go get github.com/derekparker/delve/cmd/dlv
RUN go get github.com/kisielk/errcheck
RUN go get github.com/davidrjenni/reftools/cmd/fillstruct
RUN go get github.com/nsf/gocode
RUN go get github.com/rogpeppe/godef
RUN go get github.com/zmb3/gogetdoc
RUN go get golang.org/x/tools/cmd/goimports
RUN go get github.com/golang/lint/golint
RUN go get github.com/alecthomas/gometalinter
RUN go get github.com/fatih/gomodifytags
RUN go get golang.org/x/tools/cmd/gorename
RUN go get github.com/jstemmer/gotags
RUN go get golang.org/x/tools/cmd/guru
RUN go get github.com/josharian/impl
RUN go get github.com/dominikh/go-tools/cmd/keyify
RUN go get github.com/fatih/motion
RUN vim -c GoInstallBinaries -c q -c q
RUN unset HTTPS_PROXY
RUN unset HTTP_PROXY
RUN git config --global --unset https.proxy
RUN git config --global --unset http.proxy
