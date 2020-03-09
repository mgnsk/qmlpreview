FROM therecipe/qt:linux

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

USER user

WORKDIR /app
