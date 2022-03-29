# docker-htslib

Dockerized HTSlib (bgzip, htsfile, and tabix utilities)

## How to Run

```bash
$ docker run --rm -it htslib:1.15
```

## Build Container Image

```bash
./build.sh
```

## Push to Docker Registry

Either you can use the `docker push` command or run `push.sh` (requires [SCING](https://github.com/hisplan/scing)):

```bash
./push.sh
```
