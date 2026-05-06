FROM registry.cn-hangzhou.aliyuncs.com/google-containers/golang:1.25

RUN apt-get update && apt-get install -y \
    git make bash curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN go install go.opentelemetry.io/collector/cmd/builder@v0.151.0

ENV GOPROXY=https://goproxy.cn,direct
