FROM golang:buster AS go-base

ARG USER
ARG GROUP
ARG UID
ARG GID
ARG DOCKER_GID

ENV GOPATH=/go
ENV PATH="${PATH}:/go/bin:/env_linux_amd64_513/5.13.0/gcc_64/bin:/emscripten:/emscripten/upstream/emscripten:/emscripten/node/12.9.1_64bit/bin"
ENV EMSDK=/emscripten
ENV EM_CONFIG=/home/magnus/.emscripten
ENV EMSDK_NODE=/emscripten/node/12.9.1_64bit/bin/node

# Install QT dependencies.
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

RUN mkdir -p /emscripten && chown -R ${UID}:${GID} /emscripten
RUN mkdir -p /qt && chown -R ${UID}:${GID} /qt

WORKDIR /app
USER ${USER}

# Install emscripten.
RUN git clone https://github.com/emscripten-core/emsdk.git /emscripten \
    && cd /emscripten \
    && ./emsdk install latest \
    && ./emsdk activate latest
