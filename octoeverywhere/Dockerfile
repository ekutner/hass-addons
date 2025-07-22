FROM octoeverywhere/octoeverywhere:latest

LABEL \
  io.hass.version="1.0.0" \
  io.hass.type="addon" \
  io.hass.arch="armhf|aarch64|i386|amd64"

RUN apk update
RUN apk add --no-cache jq

ENV CONFIG_PATH=/data/options.json

COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
