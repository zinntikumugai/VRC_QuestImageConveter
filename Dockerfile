FROM alpine

RUN apk update \
    && apk add --no-cache \
    ffmpeg \
    jq \
    curl \
    bash \
    && rm -rf /var/cache/apk/*
WORKDIR /images
CMD ["/images/run.sh"]
