#!/bin/bash
# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,Red Hat Virtualization 4,multi_platform_ol
# profiles = xccdf_org.ssgproject.content_profile_stig

yum install -y aide

cat >/etc/aide.conf <<EOL
All = p+i+n+u+g+s+m+S+sha512+xattrs+selinux
/bin All # apply the custom rule to the files in bin 
/sbin All # apply the same custom rule to the files in sbin 
EOL
