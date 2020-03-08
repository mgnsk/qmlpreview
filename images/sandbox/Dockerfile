FROM golang:buster as base-env

ARG USER
ARG GROUP
ARG UID
ARG GID
ARG GOPROXY
ARG GITPROXY
ARG APTPROXY

ENV GOPATH=/go \
    GOBIN=/go/bin \
    GOOS=linux \
    GOARCH=amd64 \
    GO111MODULE=on \
    GOPROXY="${GOPROXY}" \
    GITPROXY="${GITPROXY}" \
    APTPROXY="${APTPROXY}" \
    PATH="${PATH}:/go/bin:/qt/5.13.0/gcc_64/bin"

# Use the local apt caching proxy.
RUN echo "Acquire::HTTP::Proxy \"${APTPROXY}\";" >> /etc/apt/apt.conf.d/01proxy \
    && echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

RUN apt-get update && apt-get -y install \
    build-essential

# Add local user.
RUN if grep -q ${GROUP} /etc/group; then \
    groupmod -g ${GID} ${GROUP}; \
    else \
    groupadd -f -g ${GID} ${GROUP}; \
    fi \
    && useradd -m -u ${UID} -g ${GID} ${USER} -s /bin/bash

RUN chown -R ${UID}:${GID} /go


FROM base-env as emscripten-build

ARG USER
ARG UID
ARG GID

RUN mkdir -p /emscripten && chown -R ${UID}:${GID} /emscripten

USER ${USER}

WORKDIR /emscripten

RUN git clone ${GITPROXY}/github.com/emscripten-core/emsdk.git .

RUN ./emsdk install latest

RUN ./emsdk activate latest


FROM base-env AS sandbox

COPY --from=emscripten-build /emscripten /emscripten
COPY --from=emscripten-build /home /home

ARG USER
ARG UID
ARG GID

# Install QT dependencies.
RUN apt-get -y install \
    build-essential \
    libglu1-mesa-dev \
    libpulse-dev \
    libglib2.0-dev

USER ${USER}

# TODO GO111MODULE=off does not use GOPROXY.
RUN GO111MODULE=off go get -v github.com/therecipe/qt/cmd/...

RUN GO111MODULE=off qtsetup -test=false

RUN bash -c "source /emscripten/emsdk_env.sh"

WORKDIR /app

SHELL ["/bin/bash"]
