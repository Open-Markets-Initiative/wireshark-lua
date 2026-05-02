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

# Create a non-root user so tshark doesn't run as root. Wireshark's Lua subsystem refuses
# to load user -X lua_script: files when running as root, with no error message.
RUN useradd --create-home --shell /bin/bash tester
