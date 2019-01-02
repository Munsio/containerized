FROM node:11
ARG USER_NAME
ARG USER_UID
ARG USER_GID
RUN if getent passwd $USER_UID ; then groupmod -g 500 node && usermod -u 500 node; fi
RUN if getent group $USER_GID ; then groupmod -g 385 $(getent group $USER_GID | cut -d: -f1); fi
RUN groupadd --gid $USER_GID $USER_NAME && useradd -l --uid $USER_UID --gid $USER_GID $USER_NAME

ENTRYPOINT ["node"]