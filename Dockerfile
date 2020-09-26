# Create 'Ubuntu 18.04' image
FROM ubuntu:18.04

# install packages
RUN apt-get update && \
    apt-get install -y build-essential git cmake autoconf libtool pkg-config

# Set default directory
WORKDIR /src

# copy files to docker image
COPY CMakeLists.txt main.cpp ./

# cmake build
RUN cmake . && make

# run application
CMD ["./helloworld"]




