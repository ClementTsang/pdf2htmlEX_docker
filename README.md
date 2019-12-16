This repo puts pdf2htmlEX into a Docker container.  Forked as it was last updated about 4 years ago and on ran an old version; this should run the most recent version and installs MS's non-free fonts which I needed for my use case.

## How to use this docker containter to convert a PDF file to an HTML File
Suppose you have a PDF file ~/pdf/test.pdf, simply running

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

For more details on how to run `pdf2htmlEX`, please read the wiki:

<https://github.com/coolwanglu/pdf2htmlEX/wiki/Quick-Start>

For the Docker Hub page, see:

<https://cloud.docker.com/u/clementtsang/repository/docker/clementtsang/pdf2htmlex-microsoft-fonts>
