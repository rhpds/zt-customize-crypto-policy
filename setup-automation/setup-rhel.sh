#!/bin/bash
# Install the mod_ssl moved to instance.yml
# dnf install -y httpd mod_ssl
systemctl --now enable httpd

# Once we have a SSL cert created at DEFAULT 2048 bit, we can up the policy for the lab
update-crypto-policies --set FUTURE

