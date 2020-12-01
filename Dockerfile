FROM debian:buster

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  build-essential \
  ca-certificates \
  git \
  wget && \
  wget https://github.com/bazelbuild/bazelisk/releases/download/v1.7.4/bazelisk-linux-amd64 -O /usr/local/bin/bazelisk && \
  chmod a+x /usr/local/bin/bazelisk

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/bazelisk"]
