FROM goproxy/goproxy as base


FROM golang:alpine as final
COPY --from=base /goproxy /goproxy

ARG USER
ARG GID
ARG UID

EXPOSE 3000

ENV GOPATH=/go

RUN addgroup --gid ${GID} ${USER} \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup ${USER} \
    --no-create-home \
    --uid ${UID} \
    ${USER}

RUN mkdir -p /go \
    && mkdir -p /cache \
    && chown -R ${UID}:${GID} /go \
    && chown -R ${UID}:${GID} /cache 

USER ${USER}

CMD ["/goproxy", "-listen=0.0.0.0:3000", "-cacheDir=/cache"]
