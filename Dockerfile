FROM erlang
RUN apt-get update
RUN apt-get --assume-yes install libpam0g-dev
RUN mkdir -p /opt/riak/
SHELL ["/bin/bash", "-c"]
ADD . /opt/riak/
WORKDIR /opt/riak/
RUN cd /opt/riak/
RUN cp .gitconfig ~/.gitconfig
RUN make
RUN make package