# Python + FFmpeg Docker Images

[![Build and Publish Docker Images](https://github.com/Johnnycyan/pypeg/actions/workflows/build-and-publish.yml/badge.svg)](https://github.com/Johnnycyan/pypeg/actions/workflows/build-and-publish.yml)

Automatically updated Docker images combining Python (slim) with FFmpeg.

## Available Tags

| Tag | Description |
|-----|-------------|
| `latest` | Always points to the newest stable Python version |
| `3.14` | Python 3.14 slim + FFmpeg |
| `3.13` | Python 3.13 slim + FFmpeg |
| `3.12` | Python 3.12 slim + FFmpeg |

> **Note:** Tags are automatically updated weekly. Only stable releases are used (no release candidates, alpha, or beta versions).

## Usage

```bash
# Pull the latest image
docker pull ghcr.io/Johnnycyan/pypeg:latest

# Or pull a specific Python version
docker pull ghcr.io/Johnnycyan/pypeg:3.13

# Run a container
docker run -it ghcr.io/Johnnycyan/pypeg:3.13 python

# Use FFmpeg
docker run -it ghcr.io/Johnnycyan/pypeg:3.13 ffmpeg -version
```

## Using in Your Dockerfile

```dockerfile
FROM ghcr.io/Johnnycyan/pypeg:3.13

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python", "app.py"]
```

## What's Included

- **Python** (slim variant) - Minimal Python installation
- **FFmpeg** - Complete multimedia framework for audio/video processing

## Automated Updates

This repository uses GitHub Actions to:

1. **Check weekly** (every Sunday at midnight UTC) for new Python slim releases
2. **Build images** for the 3 newest stable Python versions
3. **Publish** to GitHub Container Registry (ghcr.io)
4. **Multi-architecture support** - Images are built for both `linux/amd64` and `linux/arm64`

## Supported Platforms

- `linux/amd64`
- `linux/arm64`

## License

MIT License - See [LICENSE](LICENSE) for details.
