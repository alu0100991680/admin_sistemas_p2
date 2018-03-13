echo "Editamos el archivo /usr/share/migrationtools/migrate_commons.ph"
echo "Buscamos y modificamos la linea de abajo"
echo ""
echo "$ nano /usr/share/migrationtools/migrate_common.ph"
echo ""
echo "    ..."
echo "     $DEFAULT_BASE = \"dc=asmt03,dc=org\";"
echo "    ..."
echo ""
echo "Sacamos la salida de base por la consola"
echo "   /usr/share/migrationtools/migrate_base.pl >> /root/base.ldif"
/usr/share/migrationtools/migrate_base.pl >> /root/base.ldif
echo "Ahora sacamos los de password y los grupos"
echo "   /usr/share/migrationtools/migrate_passwd.pl /etc/passwd /root/password.ldif"
echo "   /usr/share/migrationtools/migrate_group.pl /etc/group /root/group.ldif"
/usr/share/migrationtools/migrate_group.pl /etc/gro /root/password.ldif
/usr/share/migrationtools/migrate_group.pl /etc/group /root/group.ldif
echo "Tenemos los siguientes archivos en root"
echo "   /root/base.ldif"
echo "   /root/password.ldif"
echo "   /root/group.ldif"
echo ""
echo "Los importamos de manera ordenada"
echo "   ldapadd -xD \"cn=Manager,dc=asmt03,dc=org\" -W -f /root/base.ldif"
echo "   ldapadd -xD \"cn=Manager,dc=asmt03,dc=org\" -W -f /root/password.ldif"
echo "   ldapadd -xD \"cn=Manager,dc=asmt03,dc=org\" -W -f /root/group.ldif"
ldapadd -xD "cn=Manager,dc=asmt03,dc=org" -W -f /root/base.ldif
ldapadd -xD "cn=Manager,dc=asmt03,dc=org" -W -f /root/password.ldif
ldapadd -xD "cn=Manager,dc=asmt03,dc=org" -W -f /root/group.ldif
echo "Visualizamos todas las entradas"
echo "-------------------------------"
uid=root,ou=People,dc=asmt03,dc=org
echo "-------------------------------"
echo ""
echo "Una vez exportados hemos exportado tambien el usuario root al esquema."
echo "Lo eliminamos."
echo "ldapdelete -xD \"cn=Manager,dc=asmt03,dc=org\" -W \"uid=root,ou=People,dc=asmt03,dc=org\""
ldapdelete -xD "cn=Manager,dc=asmt03,dc=org" -W "uid=root,ou=People,dc=asmt03,dc=org"

