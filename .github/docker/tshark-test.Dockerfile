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

# Wireshark's init.lua sets disable_lua=true when running as root, which silently skips
# user scripts loaded via -X lua_script:. CI runs as root, so override at end of init.lua.
RUN echo 'disable_lua = false' >> /usr/share/wireshark/init.lua
