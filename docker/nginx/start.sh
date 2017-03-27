#!/bin/bash

# Set the IP address and port of PHP-FPM's container to nginx's vhost configuration
/bin/sed -i "s@<APP_SERVER_NAME>@${APP_SERVER_NAME}@" /etc/nginx/sites-enabled/default
/bin/sed -i "s@<FPM_HOST>@${PHP_PORT_9000_TCP_ADDR}@" /etc/nginx/sites-enabled/default
/bin/sed -i "s@<FPM_PORT>@${PHP_PORT_9000_TCP_PORT}@" /etc/nginx/sites-enabled/default

/usr/sbin/nginx

# Execute from CMD
exec "$@"