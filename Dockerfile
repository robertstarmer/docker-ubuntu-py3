FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bash python3 python3-pip
RUN pip3 install --upgrade pip
RUN echo "America/New_York" > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
