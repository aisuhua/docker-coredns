# CoreDNS

## Clone 

```sh
git clone https://github.com/aisuhua/docker-coredns.git
cd docker-coredns
```

## Docker

```sh
docker run --rm --name coredns -w /etc/coredns -v $PWD/conf:/etc/coredns -p 53:53/udp coredns/coredns:1.10.1 -conf /etc/coredns/Corefile
```

## Docker Compose

```sh
docker-compose up
```

## 构建一个新的镜像并运行

Docker

```sh
docker build -t aisuhua/coredns:latest .
docker run --rm --name coredns -p 53:53/udp aisuhua/coredns:latest
```

Docker Compose

```sh
docker-compose -f docker-compose.prod.yaml up
```

## 问题

在 Ubuntu 下，如果 53 端口已被监听，可以绑定特定的 IP 解决

```sh
docker run --rm --name coredns -p 127.0.0.1:53:53/udp aisuhua/coredns:latest
```

reload 配置

```sh
docker kill --signal="SIGUSR1" coredns
```

## 测试

DNS 解析

```sh
dig @127.0.0.1 master1.ocp1.example.com
```

反向解析

```sh
dig @127.0.0.1 -x 192.168.1.10
```
