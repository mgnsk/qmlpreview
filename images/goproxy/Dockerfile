FROM goproxy/goproxy

ARG USER
ARG GID
ARG UID

RUN addgroup --gid ${GID} ${USER} \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup ${USER} \
    --no-create-home \
    --uid ${UID} \
    ${USER}

RUN chown -R ${UID}:${GID} /go

USER ${USER}

ENTRYPOINT ["/goproxy"]
