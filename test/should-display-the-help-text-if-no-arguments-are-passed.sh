#!/bin/sh

set +e

HELP="$(../dist/ntenvs)"
EXPECT="A development environments (noob) manager."

if ! echo "${HELP}" | grep -q "${EXPECT}"; then
  printf "Expected:\\n\\n%b\\n\\nActual:\\n\\n%b" "${EXPECT}" "${HELP}"
  exit 1
fi
