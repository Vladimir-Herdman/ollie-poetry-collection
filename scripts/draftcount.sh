#!/usr/bin/env bash

source "$(dirname "$0")/utils.sh"

DONTCOUNT=2 #'README.md' 'total line from ls -l'

main() {
    cd "$(get_rootprojectdir)" || return 1
    local numdrafts="$(( $(ls -l ./drafts | wc -l) - "$DONTCOUNT" ))"
    printf "%s\n" "$numdrafts"
}
main
