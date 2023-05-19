# CoreDNS

## Docker

直接使用

```sh
docker run --rm --name coredns -w /etc/coredns -v $PWD/conf:/etc/coredns -p 53:53/udp coredns/coredns:1.10.1 -conf /etc/coredns/Corefile
```

构建成新的镜像再使用

```sh
docker build -t aisuhua/coredns:latest .
docker run --rm -p 53:53/udp aisuhua/coredns:latest
```

在 Ubuntu 下，如果 53 端口已被监听，可以绑定特定的 IP 解决

```sh
docker run --rm -p 127.0.0.1:53:53/udp aisuhua/coredns:latest
```
