if [ -z "$(ls -A "/etc/bind")" ]; then
  cp -R /default/bind/* /etc/bind/
fi

/usr/sbin/named -f -c /etc/bind/named.conf -u named
