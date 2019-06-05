#Dockerfile to build a pdf2htmlEx image
FROM debian:jessie

# update debian source list
RUN echo "deb [check-valid-until=no] http://cdn-fastly.deb.debian.org/debian jessie main contrib" > /etc/apt/sources.list.d/jessie.list
RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main contrib non-free" > /etc/apt/sources.list.d/jessie-backports.list
RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
RUN apt-get -o Acquire::Check-Valid-Until=false update

RUN apt-get -qqyo Acquire::Check-Valid-Until=false install ttf-mscorefonts-installer
RUN apt-get -qqyo Acquire::Check-Valid-Until=false install pdf2htmlex && rm -rf /var/lib/apt/lists/*

VOLUME /pdf
WORKDIR /pdf

CMD ["pdf2htmlEX"]
