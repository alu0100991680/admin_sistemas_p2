echo "[Reiniciando servicios]"
echo ""
echo "Levantamos el servicio con los objetos de LDAP definidos"
systemctl start slapd
systemctl status slapd
echo "Hacemos una busqueda minima para verificar que funciona. NOTA: La busqueda se realiza con el usuario ANONYMOUS"
echo "ldapsearch es el cliente para busqueda"
ldapsearch -x -s base namingContexts

