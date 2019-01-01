FROM node:11
RUN apt-get update \
    && apt-get install curl apt-transport-https -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update \
    && apt-get install yarn -y --no-install-recommends --allow-unauthenticated
ENTRYPOINT ["yarn"]