FROM ubuntu:latest

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
  curl \
  build-essential \
  scons \ 
  python3 \
  libssl-dev binutils-dev \
  libiberty-dev libmariadb-dev-compat libleveldb-dev libsnappy-dev git

RUN curl \
-k \
https://bootstrap.pypa.io/get-pip.py \
--output /tmp/get-pip.py \
&& python3 /tmp/get-pip.py

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/*

# RUN pip install config
# RUN git -c http.sslVerify=false  clone https://github.com/CauldronDevelopmentLLC/cbang.git
# RUN cd cband && scons
# SET CBANG_HOME=/work/cbang
# RUN scons