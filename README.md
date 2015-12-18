# docker-fluentd
Docker image providing a fluentd aggregator based on fluent-plugin-secure-forward

## Building

```
docker build -t test/fluentd:1.0.0 .
```

Run:

```
docker run -ti --rm test/fluentd:1.0.0
```

Run and replace the entrypoint:

```
docker run -ti --rm --entrypoint /bin/bash test/fluentd:1.0.0
```
