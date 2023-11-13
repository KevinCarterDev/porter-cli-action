FROM ghcr.io/porter-dev/porter/porter-cli:latest

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
