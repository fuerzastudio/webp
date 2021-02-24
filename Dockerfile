FROM alpine:3.13.2

LABEL maintainer="Jônatan Gouveia jonatan@fuerzastudio.com.br"

LABEL version="1.0.0"

LABEL company="FuerzaStudio"

WORKDIR /usr/local/webp

ENV WEBP_VERSION 1.1.0-r0

RUN apk update\
 && apk add --no-cache ca-certificates inotify-tools tzdata openssl libwebp-tools=${WEBP_VERSION} bash

ADD start.sh /start.sh
RUN chmod a+x /start.sh

WORKDIR /usr/local/img

CMD ["/start.sh", "/usr/local/img"]