# File: Containers images manager entry (src/containers/index.sh)
# License: MIT, see LICENSE file for more information.
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_containers() {
  if [ $# -eq 0 ]; then
    ntenvs_containers_help
    return
  fi

  NTENVS_CONTAINERS_SUBCMD="$1" && shift

  case "${NTENVS_CONTAINERS_SUBCMD}" in
    --description)
      echo "Containers images manager."
      ;;

    -h | --help)
      ntenvs_containers_help
      ;;

    disk-image | disk-img | dimg | di | d )
      ntenvs_containers_disk_image "$@"
      ;;

    rootfs | rfs | r )
      ntenvs_containers_rootfs "$@"
      ;;

    * )
      echo "Invalid option given (${NTENVS_CONTAINERS_SUBCMD})" >&2
      exit 1
      ;;
  esac
}

ntenvs_containers_help() {
  cat <<EOF
$(ntenvs_version)

$(ntenvs_containers --description)

Usage: ntenvs containers [<options...>]
Usage: ntenvs containers <subcommand> [<options...>]

Options:

  --description
    Shows a small description text and exit.

  -h, --help
    Shows this help text and exit.

Subcommands:

  disk-image, disk-img, dimg, di, d
    $(ntenvs_containers_disk_image --description)

  oci-image, oci, o
    $(ntenvs_containers_oci_image --description)

  rootfs, rfs, r
    $(ntenvs_containers_rootfs --description)
EOF
}
