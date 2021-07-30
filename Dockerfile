FROM ubuntu:20.04
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/phra/PEzor && cd PEzor && sh install.sh
#RUN /app/PEzor/PEzor.sh -h