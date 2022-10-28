#!/bin/bash


declare -A toolnames
toolnames["bats"]="bats-core/bats-core"
toolnames["bats-assert"]="ztombol/bats-assert"
toolnames["bats-support"]="ztombol/bats-support"
toolnames["bats-mock"]="rajiteh/bats-mock"

__dirname="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
toolname="$(basename "$(dirname "${__dirname}")")"

get_tool_name() {
    echo "${toolname}"
}

get_repo_for_tool() {
    echo "${toolnames[$1]}"
}
