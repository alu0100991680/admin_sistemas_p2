# Práctica 2 

Lanzar los scripts en CentOS7 en el orden indicado. 
Existen scripts que indican pasos adicionales que no pueden ser facilmente automatizables.

# ES IMPORTANTE MIRAR CON CAT EL SCRIPT ANTES DE LANZARLO !!!

## Servidor

#### Configuración LDAP

Montar como root (completar user:password)

```sh
$ su -
```

Configuración de LDAP

```sh
$ ./server/ldap_conf_1.sh
```

Este script muestra pasos de configuración manuales

```sh
$ ./server/ldap_conf_2.sh
```

Finalmente levantamos el servicio y comprobamos

```sh
$ ./server/ldap_conf_3.sh
```

---

#### Migrar /etc/password /etc/group a formato *.ldif (Migrationtools)

Intalamos migrations tools

```sh
$ ./server/ldap_migrations_1.sh
```

Exportamos los ficheros ldif y los cargamos en LDAP

```sh
$ ./server/ldap_migrations_2.sh
```

---

#### Configuramos el firewall

Habilitamos la conexión para el cliente

```sh
$ ./server/ldap_firewall_1.sh
```

---

## Cliente

Instalamos los paquetes

```sh
$ ./client/ldap_conf_1.sh
```

Habilitamos la conexión en el firewall

```sh
$ ./client/ldap_firewall_1.sh
```

Probamos la conexión

```sh
$ ./client/ldap_test_1.sh
```

