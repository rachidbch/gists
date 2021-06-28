#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname $([ -L ${BASH_SOURCE[0]} ] && readlink -f ${BASH_SOURCE[0]} || echo ${BASH_SOURCE[0]}))" &>/dev/null && pwd -P)
(
  cd "$SCRIPT_DIR"
  git pull
  git submodule update --recursive --remote
)
