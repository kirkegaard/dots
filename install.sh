#!/bin/bash

install_deps=0
install_gui=0
dry_run=0
script_dir=$(dirname "$0")
target_dir=""
os_type=""

# Function to log messages, supports dry-run mode
log() {
    if [[ $dry_run == 1 ]]; then
        echo "[DRY_RUN]: $1"
    else
        echo "$1"
    fi
}

export -f log

copy() {
  local source="$1"
  local destination="$2"

  if [[ -d "$source" ]]; then
    # Source is a directory, copy recursively
    cp -r "$source/." "$destination/"
  else
    # Source is a file, copy it directly
    cp "$source" "$destination"
  fi
}

export -f copy

# Function to run a setup.sh file
setup() {
    local setup_dir=$(dirname $setup_file)
    local setup_file=$(basename $1)

    log "Running: $setup_file in $(basename $setup_dir)"

    if [[ $dry_run == 0 ]]; then
        pushd "$setup_dir" > /dev/null
        OS="$os_type" INSTALL_DEPS="$install_deps" "./$setup_file"
        popd > /dev/null
    fi
}

# Detect the operating system and set os_type
detect_os() {
    case "$(uname -s)" in
        Linux*)         os_type="linux" ;;
        Darwin*)        os_type="macos" ;;
        CYGWIN*|MINGW*) os_type="windows" ;;
        *)              os_type="macos" ;;
    esac
    export OS_TYPE="$os_type"
    log "OS: $os_type"
}

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --install-deps) install_deps=1 ;;
        --install-gui) install_gui=1 ;;
        --dry-run) dry_run=1 ;;
        *) target_dir="$1" ;;
    esac
    shift
done

# Detect the OS before running any scripts
detect_os

# If a target directory is specified, run its setup.sh
if [[ -n $target_dir ]]; then
    setup_file="$script_dir/$target_dir/setup.sh"
    if [[ -f $setup_file ]]; then
        setup "$setup_file"
    else
        log "Error: setup.sh not found in $target_dir."
        exit 1
    fi
else
    # If no target directory, find and run all setup.sh files
    setup_files=$(find "$script_dir" -mindepth 2 -maxdepth 2 -type f -name 'setup.sh' | sort)
    for setup_file in $setup_files; do
        setup "$setup_file"
    done
fi

log "Done."

unset -f log

