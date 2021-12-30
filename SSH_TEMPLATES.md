# Configs for ssh over proxy jump instance with port redirection
```
Host proxy-instance
    HostName 18.169.74.218
    User ubuntu
    LocalForward 8888 localhost:8888
    ServerAliveInterval 60
    IdentityFile ~/.ssh/

Host dev-instance-1
    HostName 10.99.5.6
    User ubuntu
    ProxyJump proxy-instance
    ServerAliveInterval 60
    LocalForward 8888 localhost:8888
    LocalForward 8080 localhost:8080
    IdentityFile ~/.ssh/
```

# Configs for redirection traffic to RDS
```
# == RDS TUNNELING PROXY ==
Host rds_tunnel
User ubuntu
Hostname 35.176.51.196
Localforward 5432 <YOUR RDS HOSTNAME>:5432
IdentityFile ~/.ssh/<YOUR `.pem` FILE>
```
