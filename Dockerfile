FROM node:14-alpine as builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apk update \
&& apk add \
        ca-certificates \
        curl \
        jq \
        git \
        libcurl \
        icu-libs \
        libunwind \
        netcat-openbsd \
        libressl-dev

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]

COPY . .
RUN chmod 755 start.sh

ENTRYPOINT ["/azp/start.sh"]
CMD ["./start.sh"]