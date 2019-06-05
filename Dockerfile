#Dockerfile to build a pdf2htmlEx image
FROM debian:stretch

# update debian source list
RUN echo "deb http://ftp.de.debian.org/debian sid main non-free contrib" >> /etc/apt/sources.list 
RUN apt-get -qqy update 
RUN apt-get -qqy install ttf-mscorefonts-installer
RUN apt-get -qqy install pdf2htmlex && \
    rm -rf /var/lib/apt/lists/*

VOLUME /pdf
WORKDIR /pdf

CMD ["pdf2htmlEX"]
