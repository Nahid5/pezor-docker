FROM ubuntu:20.04
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update
RUN apt-get install wget git clang g++ cmake mingw-w64 mingw-w64-x86-64-dev mingw-w64-tools mingw-w64-common mingw-w64-i686-dev gcc-mingw-w64 unzip build-essential autotools-dev libcapstone-dev libssl-dev cowsay mono-devel -y
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin/:/app/PEzor:/app/PEzor/deps/donut/:/app/PEzor/deps/wclang/_prefix_PEzor_/bin/:/app/wclang/_prefix_/bin:/usr/local/go/bin
RUN git clone https://github.com/Nahid5/PEzor
RUN /app/PEzor/install.sh
ENTRYPOINT ["/app/PEzor/PEzor.sh"]
