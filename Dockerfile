FROM ubuntu:24.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install -y -qq --no-install-recommends \
        ca-certificates  \
        curl \
        ghostscript \
        git \
        gnuplot \
        imagemagick \
        make \
        jq \
        qpdf \
        python3-pygments \
        wget \
        texlive-latex-base \
        texlive-full \
        vim-tiny && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /src

WORKDIR /root

# COPY scripts/* .

# RUN chmod +x install-texlive.sh && \
#     ./install-texlive.sh

COPY src/Satzung.tex /src
