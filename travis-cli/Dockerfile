FROM ruby:2-alpine

ARG USER_NAME
ARG USER_UID
ARG USER_GID

RUN apk add --no-cache shadow git \
    && apk add --no-cache --virtual build_deps build-base ruby-dev \
    && gem install travis -v 1.8.9 \
    && apk del build_deps

RUN if getent passwd $USER_UID ; then usermod -u 340 $(getent passwd $USER_UID | cut -d: -f1); fi \
    && if getent group $USER_GID ; then groupmod -g 341 $(getent group $USER_GID | cut -d: -f1); fi \
    && addgroup --gid $USER_GID $USER_NAME && useradd -l -K MAIL_DIR=/dev/null --uid $USER_UID --gid $USER_GID $USER_NAME

ENTRYPOINT ["travis"]