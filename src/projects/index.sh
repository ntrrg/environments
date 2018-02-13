# File: Projects scaffolding tool entry (src/projects/index.sh)
# Authors:
#   * Miguel Angel Rivera Notararigo <ntrrgx@gmail.com>

ntenvs_projects() {
  if [ $# -eq 0 ]; then
    ntenvs_projects_help
    return
  fi

  NTENVS_PROJECTS_SUBCMD="$1" && shift

  case "${NTENVS_PROJECTS_SUBCMD}" in
    --description)
      echo "Projects scaffolding tool. (Under construction..)"
      ;;

    -h | --help)
      ntenvs_projects_help
      ;;

    * )
      echo "Invalid option given (${NTENVS_PROJECTS_SUBCMD})" >&2
      exit 1
      ;;
  esac
}

ntenvs_projects_help() {
  cat <<EOF
$(ntenvs_version)

$(ntenvs_projects --description)

Usage: ntenvs projects [<options...>]
Usage: ntenvs projects <subcommand> [<options...>]

Options:

  --description
    Shows a small description text and exit.

  -h, --help
    Shows this help text and exit.

Subcommands:

  rest, r
    $(ntenvs_projects_rest --description)
EOF
}
