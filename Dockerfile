# refs
# slycont install
# https://github.com/python-control/Slycot
# https://qiita.com/YuH25/items/286422a0ede4945baa1a
#
# python ftp
# https://www.python.org/ftp/python/

FROM ubuntu:22.04

# timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt update -y && apt install -y \
    vim-gtk3 git wget curl

RUN apt install -y \
    https://www.python.org/ftp/python/3.13.0/Python-3.13.0a1.tgz \
    && tar -xf Python-3.13.0a1.tgz \
    && cd Python-3.13.0a1.tgz \
    && ./configure --enable-optimizations \
    && make && make install


