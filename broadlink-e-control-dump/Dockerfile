FROM python:2.7-slim

ARG USER_NAME
ARG USER_UID
ARG USER_GID

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    && pip install simplejson \
    && git clone https://github.com/NightRang3r/Broadlink-e-control-db-dump.git /app

RUN if getent passwd $USER_UID ; then usermod -u 340 $(getent passwd $USER_UID | cut -d: -f1); fi \
    && if getent group $USER_GID ; then groupmod -g 341 $(getent group $USER_GID | cut -d: -f1); fi \
    && addgroup --gid $USER_GID $USER_NAME && useradd -l -K MAIL_DIR=/dev/null --uid $USER_UID --gid $USER_GID $USER_NAME

ENTRYPOINT ["/bin/bash"]