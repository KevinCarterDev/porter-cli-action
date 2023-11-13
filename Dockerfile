FROM ghcr.io/porter-dev/porter/porter-cli:latest

RUN curl -LO --output-dir /usr/local/bin/ "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"; chmod +x /usr/local/bin/kubectl; kubectl version --client

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
