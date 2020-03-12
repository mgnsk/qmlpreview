FROM therecipe/qt:wasm

ARG GROUP
ARG UID
ARG GID

# Add local user.
RUN if grep -q ${GROUP} /etc/group; then \
    groupmod -g ${GID} ${GROUP}; \
    else \
    groupadd -f -g ${GID} ${GROUP}; \
    fi \
    && useradd -m -u ${UID} -g ${GID} user -s /bin/bash \
    && usermod -a -G ${GROUP} user

VOLUME /app

RUN mkdir -p /home/user/.cache \
    && chown -R ${UID}:${GID} /home/user/.cache

RUN mkdir -p /home/user/work/pkg /home/user/work/bin \
    && chown -R ${UID}:${GID} /home/user/work/pkg /home/user/work/bin

USER user

WORKDIR /app
