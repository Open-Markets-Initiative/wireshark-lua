# Test-runner image for headless tshark dissector tests in CI.
# Built and published by .github/workflows/build-image.yml whenever this file changes.

FROM ubuntu:24.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        tshark \
        lua5.4 \
        git \
        ca-certificates \
        curl && \
    rm -rf /var/lib/apt/lists/*
