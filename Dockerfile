FROM coredns/coredns:1.10.1

WORKDIR /etc/coredns
COPY conf .
CMD ["-conf", "/etc/coredns/Corefile"]
