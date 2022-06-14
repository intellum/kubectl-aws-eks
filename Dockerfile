FROM alpine:3.16.0

ENV KUBECTL_VERSION "v1.22.2"

RUN apk update && apk add --no-cache \
  aws-cli \
  bash \
  curl \
  ruby

RUN curl -sL -o /tmp/kubectl "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
  && chmod +x /tmp/kubectl \
  && mv /tmp/kubectl /usr/local/bin/kubectl

COPY files/ /
ENTRYPOINT ["/entrypoint.sh"]
