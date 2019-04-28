# Dockerizing thunder xware
# xware version: Xware1.0.31 release date: 2014-08-27

FROM ubuntu:latest
WORKDIR /app

COPY thunder /app/
COPY start.sh /app/
VOLUME /app/TDDOWNLOAD

RUN apt-get update && apt-get install -y --no-install-recommends zlib1g-dev lib32z1 lib32ncurses5 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["./start.sh"]
