FROM node:alpine

LABEL "name"="CTO.ai Ops CLI Action"
LABEL "maintainer"="Ruxandra Fediuc <ruxandra.fediuc@gmail.com>"
LABEL "version"="1.0.0"

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN npm -g config set user root

RUN npm install -g @cto.ai/ops

ENTRYPOINT ["/entrypoint.sh"]
