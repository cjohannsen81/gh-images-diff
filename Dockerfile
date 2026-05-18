# Pinned to the digest resolved on 2026-05-18.
# The GitHub Action in this repo will open a PR when a newer build is available.
FROM cgr.dev/datatomix.com/python:latest@sha256:8e6334c6d8707e29c54273a45f4e2edd3c3eb36b8bd23e74af8ec1e38ec4be4a

WORKDIR /app

COPY hello.py .

# The base image entrypoint is already /usr/bin/python and the container
# runs as non-root (uid 65532) by default — no USER or ENTRYPOINT needed.
CMD ["hello.py"]
