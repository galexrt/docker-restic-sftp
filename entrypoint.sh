#!/bin/bash

RESTIC_REPOSITORY="${RESTIC_REPOSITORY:-}"
RESTIC_PASSWORD="${RESTIC_PASSWORD:-}"
RESTIC_PASSWORD_FILE="${RESTIC_PASSWORD_FILE:-}"
RESTIC_FORGET_FLAGS="${RESTIC_FORGET_FLAGS:-}"

BACKUP_TARGET="${BACKUP_TARGET:-/target}"

if [ ! -z "$RESTIC_FORGET_FLAGS" ]; then
    restic forget "$RESTIC_FORGET_FLAGS"
fi

restic backup "$BACKUP_TARGET"