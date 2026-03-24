FROM mcr.microsoft.com/devcontainers/typescript-node:4-24-trixie

# Playwright deps
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libasound2 \
    libatk1.0-0 \
    libdbus-1-3 \
    libgtk-3-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    && rm -rf /var/lib/apt/lists/*

