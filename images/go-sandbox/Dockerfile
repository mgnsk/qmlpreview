FROM golang:buster AS go-base

ARG USER
ARG GROUP
ARG UID
ARG GID
ARG DOCKER_GID

ENV GOPATH=/app/.go
ENV GOOS=linux
ENV GOARCH=amd64
ENV GO111MODULE=on
ENV PATH="${PATH}:${GOPATH}/bin:/app/bin"

RUN apt-get update && apt-get -y install \
    build-essential \
    libglu1-mesa-dev \
    libpulse-dev \
    libglib2.0-dev

RUN groupadd -f -g ${DOCKER_GID} docker \
    && if grep -q ${GROUP} /etc/group; then \
    groupmod -g ${GID} ${GROUP}; \
    else \
    groupadd -f -g ${GID} ${GROUP}; \
    fi \
    && useradd -m -u ${UID} -g ${GID} -G ${DOCKER_GID} ${USER} -s /bin/bash \
    && mkdir -p /app \
    && chown -R ${UID}:${GID} /app

WORKDIR /app

USER ${USER}
SHELL ["/bin/bash", "-c"]

RUN git clone https://github.com/therecipe/env_linux_amd64_513.git \
    ${GOPATH}/src/github.com/therecipe/env_linux_amd64_513
