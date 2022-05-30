This repo puts pdf2htmlEX into a Docker container. This should run the most recent version and installs MS's non-free fonts which I needed for my use case.

## How to use this Docker container to convert a PDF file to an HTML File
Suppose you have a PDF file `~/pdf/test.pdf`, simply running:

```bash
docker run -ti --rm -v ~/pdf:/pdf clementtsang/pdf2htmlex-ms-fonts pdf2htmlEX --zoom 1.3 test.pdf
```

would produce a single HTML file `test.html` in `~/pdf` directory.

## To run the docker container as local command

```bash
alias pdf2htmlEX="docker run -ti --rm -v ~/pdf:/pdf clementtsang/pdf2htmlex-ms-fonts pdf2htmlEX"
pdf2htmlEX -h 
pdf2htmlEX --zoom 1.3 test.pdf
```

For more details on how to run `pdf2htmlEX`, please read [the wiki](https://github.com/pdf2htmlEX/pdf2htmlEX).

For the Docker Hub page, see [here](https://cloud.docker.com/u/clementtsang/repository/docker/clementtsang/pdf2htmlex-microsoft-fonts).

A ghcr package can also be found [here](https://github.com/ClementTsang/pdf2htmlEX_docker/pkgs/container/pdf2htmlex-ms-fonts).
