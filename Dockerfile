FROM ubuntu:22.04

RUN apt update
RUN apt install -y git \
    curl \
    unzip

RUN git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
RUN echo 'export PATH=$PATH:$HOME/.tfenv/bin' >> ~/.bashrc && ln -s ~/.tfenv/bin/* /usr/local/bin

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
