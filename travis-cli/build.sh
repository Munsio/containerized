docker build -t dockerized-travis \
  --build-arg USER_UID=`id -u` \
  --build-arg USER_GID=`id -g` \
  --build-arg USER_NAME=`id -un` \
  --no-cache \
  .