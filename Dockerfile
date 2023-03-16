FROM python:3.9.13-slim

RUN apt update
RUN apt -y install ffmpeg

RUN useradd --create-home --shell /bin/sh spotdl

USER spotdl

ENV PATH="/home/spotdl/.local/bin:$PATH"

RUN pip install --user spotdl==4.1.3

VOLUME [ "/home/spotdl/downloads" ]

WORKDIR /home/spotdl/downloads

ENTRYPOINT [ "spotdl" ]
