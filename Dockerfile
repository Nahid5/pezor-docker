FROM ubuntu:20.04
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update
RUN apt-get install git clang g++ cmake mingw-w64 mingw-w64-x86-64-dev mingw-w64-tools mingw-w64-common mingw-w64-i686-dev -y
RUN git clone https://github.com/tpoechtrager/wclang && cd wclang && cmake -DCMAKE_INSTALL_PREFIX=_prefix_ . && make && make install
RUN git clone https://github.com/phra/PEzor && cd PEzor && sh install.sh
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin/:/app/PEzor:/app/PEzor/deps/donut/:/app/PEzor/deps/wclang/_prefix_PEzor_/bin/
#RUN /app/PEzor/PEzor.sh -h
ENTRYPOINT ["/app/PEzor/PEzor.sh"]
