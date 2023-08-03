FROM ghcr.io/telekom-mms/deb-builder-base:jammy
ARG USER_ID

RUN useradd user -u ${USER_ID}
RUN set -eu ; \
  export DEBIAN_FRONTEND=noninteractive ; \
  apt-get update -y && \
  apt-get install --no-install-recommends -y \
  gcc-multilib \
  binutils-dev \
  pkg-config \
  uuid-dev \
  help2man \
  gnu-efi \
  libssl-dev
