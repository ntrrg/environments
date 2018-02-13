#!/bin/sh

set +e

HELP="$(../../../dist/ntenvs c d)"
EXPECT="Manages containers as disk images. (Under construction..)"

if ! echo "${HELP}" | grep -q "${EXPECT}"; then
  printf "Expected:\\n\\n%b\\n\\nActual:\\n\\n%b" "${EXPECT}" "${HELP}"
  exit 1
fi
