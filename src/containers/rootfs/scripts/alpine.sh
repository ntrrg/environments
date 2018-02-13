# File: Alpine RootFS container creation script (src/containers/rootfs/scripts/alpine.sh)
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_containers_alpine() {
  if [ "${USER}" != "root" ]; then
    echo "You must execute this script as root user or with sudo command"
    exit 1
  fi

  TARGET=${1:-/srv}

  echo "${TARGET}"
}
