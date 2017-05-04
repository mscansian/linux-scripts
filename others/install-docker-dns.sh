#!/bin/bash

mkdir -P /etc/systemd/system/docker.service.d
echo "[Service]" > /etc/systemd/system/docker.service.d/dns.conf.disabled
echo "ExecStart=" >> /etc/systemd/system/docker.service.d/dns.conf.disabled
echo "ExecStart=/usr/bin/docker daemon --dns 192.168.0.253 -H fd://" >> /etc/systemd/system/docker.service.d/dns.conf.disabled
