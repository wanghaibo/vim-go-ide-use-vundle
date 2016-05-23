# vim-go-ide-use-vundle
vim-go-ide-use-vundle

# git 版本 
    git版本太低，请将服务器git版本升级到1.7.9.5以上
    yum remove git
    下载git2.2.1并将git添加到环境变量中
    wget https://github.com/git/git/archive/v2.2.1.tar.gz
    tar zxvf v2.2.1.tar.gz
    cd git-2.2.1
    make configure
    ./configure --prefix=/usr/local/git --with-iconv=/usr/local/libiconv
    make all doc
    make install install-doc install-html
    echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc
    source /etc/bashrc

git --version
git version 2.2.1

# 如何git升级失败,需要手动拉取
vim ./github.com/alecthomas/gometalinter/main.go
gopkg.in/alecthomas/kingpin.v2 报异常，需要使用github镜像

gotool

# Origin
https://github.com/fatih/vim-go
