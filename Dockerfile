FROM ubuntu:20.04
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update
RUN apt-get install wget git clang g++ cmake mingw-w64 mingw-w64-x86-64-dev mingw-w64-tools mingw-w64-common mingw-w64-i686-dev gcc-mingw-w64 unzip build-essential autotools-dev libcapstone-dev libssl-dev cowsay mono-devel -y
RUN git clone https://github.com/tpoechtrager/wclang && cd wclang && cmake -DCMAKE_INSTALL_PREFIX=_prefix_ . && make && make install
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin/:/app/PEzor:/app/PEzor/deps/donut/:/app/PEzor/deps/wclang/_prefix_PEzor_/bin/:/app/wclang/_prefix_/bin:/usr/local/go/bin
RUN git clone https://github.com/phra/PEzor
ADD https://download.cobaltstrike.com/downloads/beacon.h /app/PEzor/
RUN sed -i '9d' /app/PEzor/install.sh
RUN sed -i '48d' /app/PEzor/install.sh
RUN sed -i '48d' /app/PEzor/install.sh
RUN sed -i '48d' /app/PEzor/install.sh
ADD https://go.dev/dl/go1.20.6.linux-amd64.tar.gz /app/
RUN tar -C /usr/local -xvf go1.20.6.linux-amd64.tar.gz 
RUN go env -w GO111MODULE=off && /app/PEzor/install.sh
ENTRYPOINT ["/app/PEzor/PEzor.sh"]
