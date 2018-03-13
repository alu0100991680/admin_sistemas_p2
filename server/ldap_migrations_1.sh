echo "Instalamos los tipos de objectos por defecto"
echo "y aquellos que son necesarios para el control de cuentas de usuario"
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/cosine.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/nis.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/inetorgperson.ldif # << ----- Objeto para gestion de cuentas
echo "Instalamos migrationstools"
yum install migrationtools
