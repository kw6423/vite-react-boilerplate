#!/usr/bin/env bash

if ! command -v codex >/dev/null 2>&1; then
    echo "Installing codex"
    npm i -g @openai/codex
fi

if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
    echo "No node_modules folder detected, running pnpm install"
    pnpm install
fi

echo "Installing vscode codex commit organizer"

RELEASE_URL="https://api.github.com/repos/kw6423/vscode-codex-commit-organizer-release/releases/latest"

VSIX_URL="$(
  curl -fsSL "$RELEASE_URL" |
    grep browser_download_url |
    grep '\.vsix' |
    head -n1 |
    cut -d '"' -f 4
)"

curl -fL "$VSIX_URL" -o /tmp/vscode-codex-commit-organizer.vsix

# Do not name it code directly because it breaks some vsc extensions like Redis
export resolved_code="$(ls ~/.vscode-server*/bin/*/bin/code-server* | head -n 1)"
# Workaround as code is unavailable in postCreateCommand - https://github.com/microsoft/vscode-remote-release/issues/8535
$resolved_code --install-extension /tmp/vscode-codex-commit-organizer.vsix --force

echo "Devcontainer started"