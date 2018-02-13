# NtEnvs https://github.com/ntrrg/ntenvs
# Copyright (c) 2018 Miguel Angel Rivera Notararigo

ntenvs_containers_alpine() {
  if [ "${USER}" != "root" ]; then
    echo "You must execute this script as root user or with sudo command"
    exit 1
  fi

  TARGET=${1:-/srv}

  echo "${TARGET}"
}
