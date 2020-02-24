FROM golang:alpine

ARG USER
ARG GID
ARG UID

EXPOSE 3000

ENV GOPATH=/go
ENV CGO_ENABLED=0

RUN apk add --no-cache -U make git

RUN addgroup --gid ${GID} ${USER} \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup ${USER} \
    --no-create-home \
    --uid ${UID} \
    ${USER}

RUN mkdir -p /build && chown -R ${UID}:${GID} /build

USER ${USER}
WORKDIR /build

RUN git clone https://github.com/goproxyio/goproxy.git .

RUN make

CMD ["/build/bin/goproxy", "-listen=0.0.0.0:3000", "-cacheDir=/go"]
