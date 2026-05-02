# Test-runner image for headless tshark dissector tests in CI.
# Built and published by .github/workflows/build-image.yml whenever this file changes.

FROM debian:trixie-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        tshark \
        lua5.4 \
        git \
        ca-certificates \
        curl && \
    rm -rf /var/lib/apt/lists/*

# Debian Trixie ships an empty /usr/share/wireshark/init.lua — Wireshark's Lua subsystem
# silently skips all user -X lua_script: files when init.lua is empty/missing. Replace it
# with the upstream init.lua from the matching Wireshark release branch.
RUN curl -fsSL https://gitlab.com/wireshark/wireshark/-/raw/release-4.4/epan/wslua/init.lua \
        -o /usr/share/wireshark/init.lua && \
    echo 'disable_lua = false' >> /usr/share/wireshark/init.lua
