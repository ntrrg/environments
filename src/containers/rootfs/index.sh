# NtEnvs https://github.com/ntrrg/ntenvs
# Copyright (c) 2018 Miguel Angel Rivera Notararigo

# File: RootFS containers manager entry (src/containers/rootfs/index.sh)
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_containers_rootfs() {
  if [ $# -eq 0 ]; then
    ntenvs_containers_rootfs_help
    return
  fi

  NTENVS_CONTAINERS_ROOTFS_SUBCMD="$1" && shift

  case "${NTENVS_CONTAINERS_ROOTFS_SUBCMD}" in
    --description)
      echo "Manages containers as simple folders. (Under construction..)"
      ;;

    -h | --help)
      ntenvs_containers_rootfs_help
      ;;

    create | c )
      ntenvs_containers_rootfs_create "$@"
      ;;

    import | imp | i )
      ntenvs_containers_rootfs_import "$@"
      ;;

    list | ls | l )
      ntenvs_containers_rootfs_list "$@"
      ;;

    clone | cl )
      ntenvs_containers_rootfs_clone "$@"
      ;;

    export | exp | e )
      ntenvs_containers_rootfs_export "$@"
      ;;

    delete | del | d )
      ntenvs_containers_rootfs_delete "$@"
      ;;

    * )
      echo "Invalid option given (${NTENVS_CONTAINERS_ROOTFS_SUBCMD})" >&2
      exit 1
      ;;
  esac
}

ntenvs_containers_rootfs_help() {
  cat <<EOF
$(ntenvs_version)

$(ntenvs_containers_rootfs --description)

Usage: ntenvs containers rootfs [<options...>]
Usage: ntenvs containers rootfs <subcommand> [<options...>]

Options:

  --description
    Shows a small description text and exit.

  -h, --help
    Shows this help text and exit.

Subcommands:
EOF
}
