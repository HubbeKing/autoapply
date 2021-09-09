FROM ubuntu:20.04

ENV SOPS_VERSION="3.7.1"
ENV KUBE_VERSION="1.22.1"

RUN apt update && apt install -y --no-install-recommends git gnupg curl ca-certificates

RUN curl -LO https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops_${SOPS_VERSION}_amd64.deb

RUN dpkg -i sops_${SOPS_VERSION}_amd64.deb
RUN rm sops_${SOPS_VERSION}_amd64.deb

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl"

RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
