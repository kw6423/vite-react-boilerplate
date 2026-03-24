#!/usr/bin/env bash

if ! command -v codex >/dev/null 2>&1; then
    echo "Installing codex"
    npm i -g @openai/codex
fi

if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
    echo "No node_modules folder detected, running pnpm install"
    pnpm install
fi

echo "Devcontainer started"