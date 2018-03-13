echo "Abrimos puertos en el firewall igual que en el servidor"
firewall-cmd --state
firewall-cmd --permanent --add-service=ldap
firewall-cmd --reload
firewall-cmd --list-services
