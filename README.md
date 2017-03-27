# Dockerized Symfony3, MongoDB3, PHP7, Redis

Basic docker-based Symfony3 setup with no example application using Nginx, MongoDB3, PHP7-FPM and Redis.

## Get started

Clone, then run docker-compose inside the project's directory :

    $ docker-compose up -d

Run composer inside the web container :

    $ docker exec -u www-data web composer update

Navigate to http://127.0.0.1:8080/. If you see a blank page, it works. This setup has no example application, only a working configuration. From here, it is up to you.


## Notes

* All settings are made for development only and are completely unsafe for production.
* There is no application, juste a skeleton for Symfony. However I have included some common bundles such as FOS User Bundle, FOS REST Bundle, Sensio Framework Extra Bundle, etc.
* There is one tiny custom bundle to make FOS User Bundle work
* There is a container for PHP-FPM and PHP code (Called web)
* There is a container for Nginx
* There is a container for MongoDB
* There is a container for Redis
* Nginx's container sets PHP-FPM's address and port on startup in nginx's vhost configuration
* PHP's container creates Symfony's parameters.yml and sets MongoDB's address and port on startup
* Code is in /code
* MongoDB's data is in /data (for persistence)
