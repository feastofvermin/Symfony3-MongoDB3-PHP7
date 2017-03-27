#!/bin/bash

# Copy parameters.yml if it does not exist
if [ ! -e "/var/www/app/config/parameters.yml" ]; then
    cp /var/www/app/config/parameters.yml.dist /var/www/app/config/parameters.yml
fi


# Set the IP address and port of Mongodb's container to parameters.yml
/bin/sed -i "s@<MONGODB_HOST>@${MONGO_PORT_27017_TCP_ADDR}@" /var/www/app/config/parameters.yml
/bin/sed -i "s@<MONGODB_PORT>@${MONGO_PORT_27017_TCP_PORT}@" /var/www/app/config/parameters.yml

# Execute from CMD
exec "$@"