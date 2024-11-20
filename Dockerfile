FROM debian:bookworm-slim

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    texlive-base \
    texlive-binaries \
    texlive-fonts-extra \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    python3-docutils \
    make

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    texlive-fonts-recommended

WORKDIR /mnt/
ENTRYPOINT ["make"]
