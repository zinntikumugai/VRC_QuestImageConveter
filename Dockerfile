FROM alpine

RUN apk update \
    && apk add --no-cache \
    ffmpeg \
    jq \
    curl \
    bash \
    rm -rf /var/cache/apk/*
WORKDIR /images
#RUN apt update \
#    && apt install -y \
#    ffmpeg \
#    jq \
#    && apt clean \
#    && rm -rf /var/lib/apt/lists/*

CMD ["/images/run.sh"]