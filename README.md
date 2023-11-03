# devops-a1-part2

# command - docker run -p 8080:80 devlops-a1-part1:latest

# output

AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message

AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message

[Fri Nov 03 17:32:39.199599 2023] [mpm_prefork:notice] [pid 1] AH00163: Apache/2.4.57 (Debian) PHP/8.1.25 configured -- resuming normal operations

[Fri Nov 03 17:32:39.199637 2023] [core:notice] [pid 1] AH00094: Command line: 'apache2 -D FOREGROUND'

192.168.65.1 - - [03/Nov/2023:17:32:40 +0000] "GET / HTTP/1.1" 200 253 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/119.0"

# Command - docker ps

# output

CONTAINER ID IMAGE COMMAND CREATED STATUS PORTS NAMES

ecdf01431eb8 devlops-a1-part1:latest "docker-php-entrypoi…" 4 seconds ago Up 4 seconds 0.0.0.0:8080->80/tcp sleepy_sinoussi

# command - docker stop devops-a1-part1

# output

devops-a1-part1

# command - docker rm devops-a1-part1

# output

devops-a1-part1

# Command - docker logs devops-a1-part1

# output

AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
[Fri Nov 03 17:53:23.892224 2023] [mpm_prefork:notice] [pid 1] AH00163: Apache/2.4.57 (Debian) PHP/8.1.25 configured -- resuming normal operations
[Fri Nov 03 17:53:23.892259 2023] [core:notice] [pid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
192.168.65.1 - - [03/Nov/2023:17:53:46 +0000] "GET / HTTP/1.1" 200 253 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/119.0"
192.168.65.1 - - [03/Nov/2023:17:53:47 +0000] "GET / HTTP/1.1" 200 252 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/119.0"

# command - docker inspect devops-a1-part1

# Output

faisalabbas@Faisals-MacBook-Pro devops-a1-part2 % docker inspect devops-a1-part1
[
{
"Id": "65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6",
"Created": "2023-11-03T16:46:22.162917336Z",
"Path": "docker-php-entrypoint",
"Args": [
"apache2-foreground"
],
"State": {
"Status": "exited",
"Running": false,
"Paused": false,
"Restarting": false,
"OOMKilled": false,
"Dead": false,
"Pid": 0,
"ExitCode": 0,
"Error": "",
"StartedAt": "2023-11-03T17:28:32.01562725Z",
"FinishedAt": "2023-11-03T17:29:58.616222805Z"
},
"Image": "sha256:905d7491744cd6341a18bc6ad24241419d7a834e4ab8242d07d1fb86806253b8",
"ResolvConfPath": "/var/lib/docker/containers/65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6/resolv.conf",
"HostnamePath": "/var/lib/docker/containers/65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6/hostname",
"HostsPath": "/var/lib/docker/containers/65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6/hosts",
"LogPath": "/var/lib/docker/containers/65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6/65c43a8afe44cd5851d4d8bf44cc0de5332208f7d8feb4758653ec4145a717c6-json.log",
"Name": "/devops-a1-part1",
"RestartCount": 0,
"Driver": "overlay2",
"Platform": "linux",
"MountLabel": "",
"ProcessLabel": "",
"AppArmorProfile": "",
"ExecIDs": null,
"HostConfig": {
"Binds": null,
"ContainerIDFile": "",
"LogConfig": {
"Type": "json-file",
"Config": {}
},
"NetworkMode": "default",
"PortBindings": {
"80/tcp": [
{
"HostIp": "",
"HostPort": "8080"
}
]
},
"RestartPolicy": {
"Name": "no",
"MaximumRetryCount": 0
},
"AutoRemove": false,
"VolumeDriver": "",
"VolumesFrom": null,
"ConsoleSize": [
12,
194
],
"CapAdd": null,
"CapDrop": null,
"CgroupnsMode": "private",
"Dns": [],
"DnsOptions": [],
"DnsSearch": [],
"ExtraHosts": null,
"GroupAdd": null,
"IpcMode": "private",
"Cgroup": "",
"Links": null,
"OomScoreAdj": 0,
"PidMode": "",
"Privileged": false,
"PublishAllPorts": false,
"ReadonlyRootfs": false,
"SecurityOpt": null,
"UTSMode": "",
"UsernsMode": "",
"ShmSize": 67108864,
"Runtime": "runc",
"Isolation": "",
"CpuShares": 0,
"Memory": 0,
"NanoCpus": 0,
"CgroupParent": "",
"BlkioWeight": 0,
"BlkioWeightDevice": [],
"BlkioDeviceReadBps": [],
"BlkioDeviceWriteBps": [],
"BlkioDeviceReadIOps": [],
"BlkioDeviceWriteIOps": [],
"CpuPeriod": 0,
"CpuQuota": 0,
"CpuRealtimePeriod": 0,
"CpuRealtimeRuntime": 0,
"CpusetCpus": "",
"CpusetMems": "",
"Devices": [],
"DeviceCgroupRules": null,
"DeviceRequests": null,
"MemoryReservation": 0,
"MemorySwap": 0,
"MemorySwappiness": null,
"OomKillDisable": null,
"PidsLimit": null,
"Ulimits": null,
"CpuCount": 0,
"CpuPercent": 0,
"IOMaximumIOps": 0,
"IOMaximumBandwidth": 0,
"MaskedPaths": [
"/proc/asound",
"/proc/acpi",
"/proc/kcore",
"/proc/keys",
"/proc/latency_stats",
"/proc/timer_list",
"/proc/timer_stats",
"/proc/sched_debug",
"/proc/scsi",
"/sys/firmware"
],
"ReadonlyPaths": [
"/proc/bus",
"/proc/fs",
"/proc/irq",
"/proc/sys",
"/proc/sysrq-trigger"
]
},
"GraphDriver": {
"Data": {
"LowerDir": "/var/lib/docker/overlay2/0f8142865672e45d42ef60f596bde860b2ccfdf0493446988309a8502e332781-init/diff:/var/lib/docker/overlay2/wpqwy5y6jmsr6g4xukqh5mcgp/diff:/var/lib/docker/overlay2/quzk8vxcjnjngfjnyw1zd1yvh/diff:/var/lib/docker/overlay2/f67777c136100961c34bd554b320a562db8033cc497ffbc20bf6128b17fb8a05/diff:/var/lib/docker/overlay2/2c5580f1768ef3f940272dc696882a94f6c2a9e7c8bcb6f565b8ab1ae6ae65bb/diff:/var/lib/docker/overlay2/755dccde2111271d5070ffdcaa95afc4029360c1c1f5830e71d2e4a945a9c40d/diff:/var/lib/docker/overlay2/aa3a2c86c53b844434fa807fe6e62615f89a819952a2554ff79f1afc2fbe746c/diff:/var/lib/docker/overlay2/8c544b90db6db233c55660e7771f4caac18028192db1f1a8522fed4720a32dc4/diff:/var/lib/docker/overlay2/b650de98eb2c64ff549ec1d5ce0e01f21a666258b3e2243698a1d1218c6c010b/diff:/var/lib/docker/overlay2/39a23923ac3ab3ed8340d24fb93a3c396ab1582939f55caa5ecdd68de29f055c/diff:/var/lib/docker/overlay2/a80dfed2b6cba741ff09457645f3201a5416a46a14c71f6efdee838687c0026c/diff:/var/lib/docker/overlay2/4d20f108fb7fe753811f5de71fa1ae55d7627b8f2d7cea4561fb470e7a2a0a28/diff:/var/lib/docker/overlay2/0ffbd21496c43323a96e2f39b5f372a078c17db0017b076749c58e133fd3b0ac/diff:/var/lib/docker/overlay2/7ce8648d267e31271e5731c6540996192fb7bfbfec1e4b2a9445f87b199834cc/diff:/var/lib/docker/overlay2/369b385741dbc13b6b643a8f62fad7ba8197af5d4e6bdb2e50db80dddb9e6505/diff:/var/lib/docker/overlay2/f8c3d6c76138bb9a41661e0974440c7f769bc5479c6152574b52c13902274864/diff",
"MergedDir": "/var/lib/docker/overlay2/0f8142865672e45d42ef60f596bde860b2ccfdf0493446988309a8502e332781/merged",
"UpperDir": "/var/lib/docker/overlay2/0f8142865672e45d42ef60f596bde860b2ccfdf0493446988309a8502e332781/diff",
"WorkDir": "/var/lib/docker/overlay2/0f8142865672e45d42ef60f596bde860b2ccfdf0493446988309a8502e332781/work"
},
"Name": "overlay2"
},
"Mounts": [],
"Config": {
"Hostname": "65c43a8afe44",
"Domainname": "",
"User": "",
"AttachStdin": false,
"AttachStdout": true,
"AttachStderr": true,
"ExposedPorts": {
"80/tcp": {}
},
"Tty": false,
"OpenStdin": false,
"StdinOnce": false,
"Env": [
"PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
"PHPIZE_DEPS=autoconf \t\tdpkg-dev \t\tfile \t\tg++ \t\tgcc \t\tlibc-dev \t\tmake \t\tpkg-config \t\tre2c",
"PHP_INI_DIR=/usr/local/etc/php",
"APACHE_CONFDIR=/etc/apache2",
"APACHE_ENVVARS=/etc/apache2/envvars",
"PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64",
"PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64",
"PHP_LDFLAGS=-Wl,-O1 -pie",
"GPG_KEYS=528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 39B641343D8C104B2B146DC3F9C39DC0B9698544 F1F692238FBC1666E5A5CCD4199F9DFEF6FFBAFD",
"PHP_VERSION=8.1.25",
"PHP_URL=https://www.php.net/distributions/php-8.1.25.tar.xz",
"PHP_ASC_URL=https://www.php.net/distributions/php-8.1.25.tar.xz.asc",
"PHP_SHA256=66fdba064aa119b1463a7969571d42f4642690275d8605ab5149bcc5107e2484"
],
"Cmd": [
"apache2-foreground"
],
"Image": "devlops-a1-part1",
"Volumes": null,
"WorkingDir": "/var/www/html",
"Entrypoint": [
"docker-php-entrypoint"
],
"OnBuild": null,
"Labels": {},
"StopSignal": "SIGWINCH"
},
"NetworkSettings": {
"Bridge": "",
"SandboxID": "0f0621d23d93e75185535c52688406ddbf39a5c4a699cd66807f1d328fc662ef",
"HairpinMode": false,
"LinkLocalIPv6Address": "",
"LinkLocalIPv6PrefixLen": 0,
"Ports": {},
"SandboxKey": "/var/run/docker/netns/0f0621d23d93",
"SecondaryIPAddresses": null,
"SecondaryIPv6Addresses": null,
"EndpointID": "",
"Gateway": "",
"GlobalIPv6Address": "",
"GlobalIPv6PrefixLen": 0,
"IPAddress": "",
"IPPrefixLen": 0,
"IPv6Gateway": "",
"MacAddress": "",
"Networks": {
"bridge": {
"IPAMConfig": null,
"Links": null,
"Aliases": null,
"NetworkID": "483153344b1e4f31defcaa5f04c60dbf7dfb70644aca423997ed75bde17c7db2",
"EndpointID": "",
"Gateway": "",
"IPAddress": "",
"IPPrefixLen": 0,
"IPv6Gateway": "",
"GlobalIPv6Address": "",
"GlobalIPv6PrefixLen": 0,
"MacAddress": "",
"DriverOpts": null
}
}
}
}
]

# command - docker exec devops-a1-part1 ls

# output

Dockerfile
README.md
index.php

# command docker stats

# output

CONTAINER ID NAME CPU % MEM USAGE / LIMIT MEM % NET I/O BLOCK I/O PIDS
78e7cb4b84ee devops-a1-part1 0.01% 9.641MiB / 7.667GiB 0.12% 3.45kB / 1.58kB 0B / 4.1kB 8

# command - docker top devops-a1-part1

# output

UID PID PPID C STIME TTY TIME CMD

root 7370 7344 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7402 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7403 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7404 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7405 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7406 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

www-data 7407 7370 0 18:01 ? 00:00:00 apache2 -DFOREGROUND

root 7635 7344 0 18:03 ? 00:00:00 /bin/sh

# command - docker start devops-a1-part1

# output

devops-a1-part1

# command - docker pause devops-a1-part1

# output

devops-a1-part1

# command - docker unpause devops-a1-part1

# output

devops-a1-part1

# command - docker update --pids-limit=10 devops-a1-part1

# output

devops-a1-part1

# command - docker port devops-a1-part1

# output

80/tcp -> 0.0.0.0:8080

# command - docker restart devops-a1-part1

# output

devops-a1-part1
