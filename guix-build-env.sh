#!/usr/bin/env bash

# Based On:
# https://www.futurile.net/2023/10/17/guix-time-travel-dev-environments/

set -ex

guix time-machine --channels=channels.lock.scm -- \
  shell --container --nesting --network --preserve=^TERM$ --development \
  --file=guix.scm openssl nss-certs coreutils bash git
