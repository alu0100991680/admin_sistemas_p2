# Como root
yum install openldap-servers
yum install openldap-clients # Lo instalamos tambien en el servidor
# Evitamos que se active la configuracion by default
# este archivo de configuracion es vestigial de versiones pasadas de openldap
mv /etc/openldap/ldap.conf /etc/openldap/ldap.conf.old
