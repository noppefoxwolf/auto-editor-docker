# Usage

1. build docker image

```bash
docker build -t your_auto_editor_image .
```

2. run auto-editor

```bash
$ ls
file.mp4
```

```bash
docker run -v .:/app your_auto_editor_image /app/file.mp4
```

3. delete docker image

```bash
docker rmi your_auto_editor_image
```