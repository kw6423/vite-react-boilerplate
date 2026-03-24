FROM mcr.microsoft.com/devcontainers/typescript-node:4-24-trixie

# Playwright deps
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libasound2 \
    libatk1.0-0 \
    libdbus-1-3 \
    libgtk-3-0 \
    libgtk-4-1 \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libvulkan1 \
    libgraphene-1.0-0 \
    libwoff1 \
    libvpx9 \
    libopus0 \
    libgstreamer1.0-0 \
    gstreamer1.0-plugins-base \
    libflite1 \
    libjxl0.11 \
    libavif16 \
    libenchant-2-2 \
    libsecret-1-0 \
    libhyphen0 \
    libwayland-server0 \
    libmanette-0.2-0 \
    libgbm1 \
    libdrm2 \
    libgles2 \
    x264 \
    && rm -rf /var/lib/apt/lists/*

# Create .codex folder to prevent write issues
RUN mkdir -p /home/node/.codex \
    && chown -R node:node /home/node/.codex