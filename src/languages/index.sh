# File: Programming languages manager entry (src/languages/index.sh)
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_languages() {
  if [ $# -eq 0 ]; then
    ntenvs_languages_help
    return
  fi

  NTENVS_LANGUAGES_SUBCMD="$1" && shift

  case "${NTENVS_LANGUAGES_SUBCMD}" in
    --description)
      echo "Programming languages manager. (Under construction..)"
      ;;

    -h | --help)
      ntenvs_languages_help
      ;;

    * )
      echo "Invalid option given (${NTENVS_LANGUAGES_SUBCMD})" >&2
      exit 1
      ;;
  esac
}

ntenvs_languages_help() {
  cat <<EOF
$(ntenvs_version)

$(ntenvs_languages --description)

Usage: ntenvs languages [<options...>]
Usage: ntenvs languages <subcommand> [<options...>]

Options:

  --description
    Shows a small description text and exit.

  -h, --help
    Shows this help text and exit.

Subcommands:
EOF
}
