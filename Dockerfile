# refs
# slycont install
# https://github.com/python-control/Slycot
# https://qiita.com/YuH25/items/286422a0ede4945baa1a
#
# python ftp
# https://www.python.org/ftp/python/
#
# book
# https://y373.sakura.ne.jp/minami/pyctrl

FROM ubuntu:22.04

WORKDIR pycontrol
COPY ./requirements.txt /pycontrol

# timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt update -y && apt install -y \
    vim-gtk3 git wget curl cmake build-essential

RUN wget https://www.python.org/ftp/python/3.13.0/Python-3.13.0a1.tgz \
    && tar xvfz Python-3.13.0a1.tgz \
    && cd Python-3.13.0a1 \
    && ./configure --enable-optimizations \
    && make && make install

## pip list install
## https://pip.pypa.io/en/latest/user_guide/#requirements-files
#RUN cd /pycontrol \
#    && python -m pip install -r requirements.txt

