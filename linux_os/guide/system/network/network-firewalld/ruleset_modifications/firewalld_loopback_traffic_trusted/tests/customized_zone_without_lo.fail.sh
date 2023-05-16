#!/bin/bash
# packages = firewalld

# Ensure the required service is started
systemctl start firewalld

# Ensure the trusted zone is overridden by an equivalent file in /etc/firewalld/zones
firewall-cmd --permanent --zone=trusted --add-service=http

# Ensure the lo interface is assigned to the custom trusted zone
firewall-cmd --permanent --zone=trusted --remove-interface=lo
