#!/usr/bin/env bash

if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
    echo "No node_modules folder detected, running pnpm install"
    pnpm install
fi

echo "Devcontainer started"