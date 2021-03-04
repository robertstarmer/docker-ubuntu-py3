FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y \
 && apt-get install -y bash git curl python3 python3-pip \
 && pip3 install --upgrade pip setuptools wheel \
 && echo "America/New_York" > /etc/timezone \
 && apt-get install -y tzdata \
 && rm -rf /var/lib/apt/lists/*
