# EXAM PAM
## @edt ASIX M06-ASO Curs 2018-2019
### Franlin colque Siacara

Repositori d'exemples de containers docker que utilitzen PAM

 * **m06pam:latest** host pam amb authenticació ldap. utilitza l'ordre authconfig per
configurar l'autenticació.

#### Execució

```
docker run --privileged --rm --name m06pam -h m06pam --network ldapnet -it francs2/m06pam:latest
```

#### Utilització

```
getnet passwd exam01
getent passwd pere
getent passwd

getent group localgrp01
getent group [alumnes, profes]
getent group
```
