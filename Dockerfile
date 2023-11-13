FROM ghcr.io/porter-dev/porter/porter-cli:latest

RUN curl -LO --output-dir /usr/local/bin/ "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN ls -l /usr/local/bin/

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
