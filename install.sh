git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /usr/bin/python3 /bin/
export HTTPS_PROXY=http://hexin:hx300033@192.168.0.1:88 
export HTTP_PROXY=http://hexin:hx300033@192.168.0.1:88
git config --global https.proxy http://hexin:hx300033@192.168.0.1:88
git config --global http.proxy http://hexin:hx300033@192.168.0.1:88
vim -c PluginInstall -c q -c q 
go get github.com/klauspost/asmfmt/cmd/asmfmt
go get github.com/derekparker/delve/cmd/dlv
go get github.com/kisielk/errcheck
go get github.com/davidrjenni/reftools/cmd/fillstruct
go get github.com/nsf/gocode
go get github.com/rogpeppe/godef
go get github.com/zmb3/gogetdoc
go get golang.org/x/tools/cmd/goimports
go get github.com/golang/lint/golint
go get github.com/alecthomas/gometalinter
go get github.com/fatih/gomodifytags
go get golang.org/x/tools/cmd/gorename
go get github.com/jstemmer/gotags
go get golang.org/x/tools/cmd/guru
go get github.com/josharian/impl
go get github.com/dominikh/go-tools/cmd/keyify
go get github.com/fatih/motion
vim -c GoInstallBinaries -c q -c q
unset HTTPS_PROXY
unset HTTP_PROXY
git config --global --unset https.proxy
git config --global --unset http.proxy
