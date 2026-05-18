# Pinned to the digest resolved on 2026-05-18.
# The GitHub Action in this repo will open a PR when a newer build is available.
FROM cgr.dev/datatomix.com/python:3.12@sha256:487da2285c17de516d3e10387c6cd5e132d72ba49f422ff6efa6bddf9e2b7079

WORKDIR /app

COPY hello.py .

# The base image entrypoint is already /usr/bin/python and the container
# runs as non-root (uid 65532) by default — no USER or ENTRYPOINT needed.
CMD ["hello.py"]
