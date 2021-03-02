FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3 python3-pip
RUN pip3 install --upgrade pip
RUN apt-get install -y bash make gcc screen dos2unix
RUN echo "America/New_York" > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt-get install -y php7.4-cli php7.4-json parallel
RUN apt-get -y install git nodejs npm wget
