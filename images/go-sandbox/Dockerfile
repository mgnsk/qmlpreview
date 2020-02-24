FROM golang:buster AS go-base

ARG USER
ARG GROUP
ARG UID
ARG GID
ARG DOCKER_GID

ENV GOPATH=/app/.go
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


RUN mkdir -p /env_linux_amd64_513 && chown -R ${UID}:${GID} /env_linux_amd64_513

WORKDIR /app
USER ${USER}
SHELL ["/bin/bash", "-c"]

# Clone QT 5.13.
RUN git clone https://github.com/therecipe/env_linux_amd64_513.git \
    /env_linux_amd64_513
