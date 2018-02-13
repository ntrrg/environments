# File: Templates entry (src/templates/index.sh)
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_templates() {
  if [ $# -eq 0 ]; then
    ntenvs_templates_help
    return
  fi

  NTENVS_TEMPLATES_SUBCMD="$1" && shift

  case "${NTENVS_TEMPLATES_SUBCMD}" in
    --description)
      echo "Set of useful templates. (Under construction..)"
      ;;

    -h | --help)
      ntenvs_templates_help
      ;;

    * )
      echo "Invalid option given (${NTENVS_TEMPLATES_SUBCMD})" >&2
      exit 1
      ;;
  esac
}

ntenvs_templates_help() {
  cat <<EOF
$(ntenvs_version)

$(ntenvs_templates --description)

Usage: ntenvs templates [<options...>]
Usage: ntenvs templates <subcommand> [<options...>]

Options:

  --description
    Shows a small description text and exit.

  -h, --help
    Shows this help text and exit.

Subcommands:
EOF
}
