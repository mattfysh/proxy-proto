FROM ubuntu

RUN \
  apt-get update && \
  apt-get install curl -y

# keeps the container running indefinitely
# so `docker exec` can attach for debugging
CMD tail -F anything
