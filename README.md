### docker-grow

#### Build

```sh

docker build -t stevenle/grow .
```

#### Basic usage

In your grow project:

```sh

docker run -it --rm -v $(pwd):/var/grow -p 8080:8080 stevenle/grow run .
```
