FROM node:11-slim

ARG USER_NAME
ARG USER_UID
ARG USER_GID

# RUN apk add --no-cache \
#     shadow \
#     python \
#     make \
#     g++
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    python

RUN if getent passwd $USER_UID ; then usermod -u 340 $(getent passwd $USER_UID | cut -d: -f1); fi \
    && if getent group $USER_GID ; then groupmod -g 340 $(getent group $USER_GID | cut -d: -f1); fi \
    && addgroup --force-badname --gid $USER_GID $USER_NAME && useradd -l -K MAIL_DIR=/dev/null --uid $USER_UID --gid $USER_GID $USER_NAME

ENTRYPOINT ["node"]