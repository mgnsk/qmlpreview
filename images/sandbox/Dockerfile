FROM golang:buster AS go-base

ARG USER
ARG GROUP
ARG UID
ARG GID
ARG DOCKER_GID

ENV GOPATH=/go \
    GOOS=linux \
    GOARCH=amd64 \
    GO111MODULE=on \
    PATH="${PATH}:/go/bin:/env_linux_amd64_513/5.13.0/gcc_64/bin" \
    EMSDK=/emscripten \
    EM_CONFIG=/home/magnus/.emscripten \
    EMSDK_NODE=/emscripten/node/12.9.1_64bit/bin/node

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
    && mkdir -p /app /go /qt /emscripten \
    && chown -R ${UID}:${GID} /app /go /qt /emscripten

WORKDIR /app
USER ${USER}

# Install emscripten.
RUN git clone https://github.com/emscripten-core/emsdk.git /emscripten

WORKDIR /emscripten
RUN ./emsdk install latest
RUN ./emsdk activate latest


RUN /bin/bash -c "source /emscripten/emsdk_env.sh"

WORKDIR /app
SHELL ["/bin/bash"]
