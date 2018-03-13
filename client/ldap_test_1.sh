echo "Testamos la conexión (MODIFICA LA IP EN ESTE ARCHIVO SI NO LO HICISTE)"
ldapsearch -h 10.6.130.250 -x -b "dc=asmt03,dc=org" "surname=usu*"
