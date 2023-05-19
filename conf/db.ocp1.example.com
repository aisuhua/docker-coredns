$ORIGIN ocp1.example.com.
@	3600 IN	SOA example.com. example.com. (
				2017042745 ; serial
				7200       ; refresh (2 hours)
				3600       ; retry (1 hour)
				1209600    ; expire (2 weeks)
				3600       ; minimum (1 hour)
				)

	3600 IN NS ns.example.com.

api         IN A     192.168.1.10
api-int     IN A     192.168.1.10

*.apps      IN A     192.168.1.10

bootstrap   IN A     192.168.1.10

master1     IN A     192.168.1.20
master2     IN A     192.168.1.21
master3     IN A     192.168.1.22

worker1     IN A     192.168.1.30
worker2     IN A     192.168.1.31
worker3     IN A     192.168.1.32

