#! /bin/bash
#@edt ASIX M06 2018-2019
#instal.lacio 
#	-crea usuaris locals
#------------------------------------
groupadd localgrp01
groupadd localgrp02
useradd -g users -G localgrp01 exam01
useradd -g users -G localgrp01 exam02
useradd -g users -G localgrp02 exam03
echo "exam01" | passwd --stdin exam01
echo "exam02" | passwd --stdin exam02
echo "exam03" | passwd --stdin exam03

bash /opt/docker/auth.sh
cp /opt/docker/system-auth-ac /etc/pam.d/system-auth-ac
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf

