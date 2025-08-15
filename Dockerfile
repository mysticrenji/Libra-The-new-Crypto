FROM ubuntu:24.04

LABEL version="1.0"
LABEL maintainer="Renji <renjithvr11@gmail.com>"
LABEL description="A Libra <libra.org> setup docker image on Debian Distribution"

WORKDIR /libra

RUN apt-get update && \
    apt-get install -y git curl sudo && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/libra/libra.git

RUN echo "y" | /libra/libra/scripts/dev_setup.sh

WORKDIR /libra/libra

CMD ["./scripts/cli/start_cli_testnet.sh"]
