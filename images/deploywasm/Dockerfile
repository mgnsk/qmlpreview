FROM therecipe/qt:wasm

ARG GROUP
ARG GID

VOLUME /app

RUN if grep -q ${GROUP} /etc/group; then \
    groupmod -g ${GID} ${GROUP}; \
    else \
    groupadd -f -g ${GID} ${GROUP}; \
    fi \
    && useradd -m -u 1000 -g ${GID} user -s /bin/bash \
    && usermod -a -G ${GROUP} user

RUN mkdir -p /home/user/.cache \
    && chown -R user \
    /home/user/.cache \
    /home/user/work

USER user

WORKDIR /app
