firewall-cmd --state
firewall-cmd --permanent --add-service=ldap
firewall-cmd --reload
firewall-cmd --list-services
