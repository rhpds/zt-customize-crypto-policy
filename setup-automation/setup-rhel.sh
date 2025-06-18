#!/bin/bash
# Install the mod_ssl tools to autogen a self-signed cert at start up
dnf install -y httpd mod_ssl
systemctl --now enable httpd

# Once we have a SSL cert created at DEFAULT 2048 bit, we can up the policy for the lab
update-crypto-policies --set FUTURE

