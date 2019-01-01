FROM ruby:2-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential
RUN gem install travis -v 1.8.9
RUN apt-get remove build-essential -y && apt-get autoremove -y && apt-get clean
ARG USER_NAME
ARG USER_UID
ARG USER_GID
RUN groupadd --gid $USER_GID $USER_NAME && useradd --uid $USER_UID --gid $USER_GID $USER_NAME
ENTRYPOINT ["travis"]