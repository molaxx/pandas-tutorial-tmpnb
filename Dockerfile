FROM jupyter/scipy-notebook

RUN git clone https://github.com/brandon-rhodes/pycon-pandas-tutorial
WORKDIR pycon-pandas-tutorial
USER root
RUN apt-get update && apt-get install -yq \
	curl \
	&& rm -rf /var/lib/apt/lists/*
RUN sed -i 's/python/python2/' build/BUILD.sh
RUN build/BUILD.sh

