FROM cgr.dev/chainguard/python:latest
 
WORKDIR /app
 
COPY hello.py .
 
# The base image entrypoint is already /usr/bin/python and the container
# runs as non-root (uid 65532) by default — no USER or ENTRYPOINT needed.
CMD ["hello.py"]
