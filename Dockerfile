# Dockerfile to build a pdf2htmlEx image
FROM ubuntu:18.04

RUN apt -qy update
RUN apt -qy install software-properties-common

RUN add-apt-repository multiverse
RUN apt -qy update 
RUN apt -qy install ttf-mscorefonts-installer
RUN apt -qy install wget
RUN wget -q 'https://github.com/pdf2htmlEX/pdf2htmlEX/releases/download/v0.18.8.rc1/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-focal-x86_64.deb' -O 'pdf2htmlex.deb'
RUN apt -qy install './pdf2htmlex.deb'
RUN rm -rf /var/lib/apt/lists/*

VOLUME /pdf
WORKDIR /pdf

CMD ["pdf2htmlEX"]
