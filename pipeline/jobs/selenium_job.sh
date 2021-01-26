#!/bin/bash
SCRIPT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"
. "${SCRIPT_DIR}/_imports.sh"

${ROOT_DIR}/pipeline/stage_integrationtests/trigger.sh \
--sourcedir "${BUILD_DIR}" \
--targetdir "${TEST_DIR}" $@ | ts
