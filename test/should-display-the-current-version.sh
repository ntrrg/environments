#!/bin/sh

set +e

VERSION="$(../dist/ntenvs -V)"
EXPECT="NtEnvs v0.1.0"

if [ "${VERSION}" != "${EXPECT}" ]; then
  printf "Expected:\\n\\n%b\\n\\nActual:\\n\\n%b" "${EXPECT}" "${VERSION}"
  exit 1
fi
