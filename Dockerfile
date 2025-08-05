FROM n8nio/n8n:latest

USER root
RUN apk update && apk add --no-cache fontconfig ttf-liberation
RUN mkdir -p /usr/share/fonts/custom
COPY fonts/ /usr/share/fonts/custom/
RUN chmod 644 /usr/share/fonts/custom/*
RUN fc-cache -f -v
USER node
