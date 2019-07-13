#!/bin/bash

# Update hosts file
echo "[MAIN TASK] Update /etc/resolv.conf file"
cat >>/etc/resolv.conf<<EOF
nameserver 8.8.8.8
EOF


# Update the system
echo "[TASK 1] Updating the epel repo system"
yum install epel-release -y >/dev/null 2>&1

# Install desired packages
echo "[TASK 2] Installing desired packages"
yum install -y -q wget curl net-tools  > /dev/null 2>&1

# Enable password authentication
echo "[TASK 3] Enabling password authentication in sshd config"
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl reload sshd

# Disable SELinux
echo "[TASK 4] Disable SELinux"
setenforce 0
sed -i --follow-symlinks 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux

# Set Root password
echo "[TASK 6] Set root password"
echo "vagrant" | passwd --stdin root >/dev/null 2>&1

# Disable and stop firewalld
echo "[TASK 5] Disable and stop firewalld"
systemctl disable firewalld >/dev/null 2>&1
systemctl stop firewalld


# Create Yum repository
cat >>/etc/yum.repos.d/grafana.repo<<EOF
[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
EOF
#############################################  END ############################################








