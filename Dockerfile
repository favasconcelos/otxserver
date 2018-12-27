FROM ubuntu:16.04

# install build dependencies
RUN apt-get update -qq -y && apt-get install -qq -y \
  cmake \
  build-essential \
  liblua5.2-dev \
  libgmp3-dev \
  libmysqlclient-dev \
  libboost-system-dev \
  libboost-iostreams-dev \
  libpugixml-dev \
  libcrypto++-dev

# create a new user
RUN useradd -ms /bin/bash otuser

# add data to app path
ADD . /app

# compile it
WORKDIR /app
RUN mkdir -p build && cd build && cmake .. && make 
RUN cp build/tfs .

# cleanup
RUN rm -fr ./src ./vc14 ./cmake ./build

# expose ports
EXPOSE 7171 7172 7173

# exposing the data folder
VOLUME [ "/app/data" ]

# change the user
USER otuser

# the container will run as an executable
ENTRYPOINT ["/app/tfs"]

# default parameters to the container
CMD ["-c", "/app/data/config.lua" , "2>&1" , "|", "tee", "/app/data/logs/lastRun.log" ]
