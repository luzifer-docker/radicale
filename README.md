# luzifer-docker / radicale

Run radicale with header auth enabled in a Docker container

## Usage

```bash
## Build container (optional)
$ docker build -t luzifer/radicale .

## Execute radicale
$ docker run --rm -ti -v $(pwd):/data -p 5232:5232 luzifer/radicale
```
