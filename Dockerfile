# Python with FFmpeg Docker Image
# This Dockerfile is used as a template - PYTHON_VERSION is replaced during build
ARG PYTHON_VERSION=3.14
FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="Your Name <your.email@example.com>"
LABEL description="Python slim image with FFmpeg installed"

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installations
RUN python --version && ffmpeg -version

# Set working directory
WORKDIR /app

CMD ["python"]
