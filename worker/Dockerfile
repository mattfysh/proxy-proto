FROM node

WORKDIR /worker
COPY . /worker

RUN \
  apt-get update && \
  apt-get install curl -y

CMD sh worker.sh
