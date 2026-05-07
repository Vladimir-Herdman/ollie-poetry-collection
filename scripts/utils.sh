#!/usr/bin/env bash

get_rootprojectdir() {
    local dir="$(pwd)"
    echo "${dir%*script*}"
}
