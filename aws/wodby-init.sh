#!/bin/bash
# Clone the repo
git clone git@github.com:enterana/modus-sesamo-sandbox.git /home/ubuntu/modus-sesamo-sandbox
# Build  .env file
echo "### Documentation available at https://wodby.com/docs/stacks/drupal/local
### Changelog can be found at https://github.com/wodby/docker4drupal/releases
### Images tags format explained at https://github.com/wodby/docker4drupal#images-tags

### PROJECT SETTINGS

PROJECT_NAME=my_drupal8_project
PROJECT_BASE_URL=$1

DB_NAME=drupal
DB_USER=drupal
DB_PASSWORD=drupal
DB_ROOT_PASSWORD=password
DB_HOST=mariadb
DB_DRIVER=mysql

### --- MARIADB ----

MARIADB_TAG=10.1-3.4.5
#MARIADB_TAG=10.3-3.4.5
#MARIADB_TAG=10.2-3.4.5

### --- VANILLA DRUPAL ----

DRUPAL_TAG=8-4.12.12
#DRUPAL_TAG=7-4.12.12

### --- PHP ----

# Linux (uid 1000 gid 1000)

PHP_TAG=7.2-dev-4.12.7
#PHP_TAG=7.3-dev-4.12.7
#PHP_TAG=7.1-dev-4.12.7
#PHP_TAG=5.6-dev-4.12.7

# macOS (uid 501 gid 20)

#PHP_TAG=7.3-dev-macos-4.12.7
#PHP_TAG=7.2-dev-macos-4.12.7
#PHP_TAG=7.1-dev-macos-4.12.7
#PHP_TAG=5.6-dev-macos-4.12.7

### --- NGINX ----

NGINX_TAG=1.15-5.3.9
#NGINX_TAG=1.14-5.3.9

NGINX_VHOST_PRESET=drupal8
#NGINX_VHOST_PRESET=drupal7
#NGINX_VHOST_PRESET=drupal6

### --- SOLR ---

SOLR_CONFIG_SET=\"search_api_solr_8.x-2.7\"
#SOLR_CONFIG_SET=\"search_api_solr_8.x-1.2\"
#SOLR_CONFIG_SET=\"search_api_solr_7.x-1.14\"

SOLR_TAG=7.7-3.1.1
#SOLR_TAG=7.6-3.1.1
#SOLR_TAG=7.5-3.1.1
#SOLR_TAG=6.6-3.1.1
#SOLR_TAG=5.5-3.1.1

### --- ELASTICSEARCH ---

ELASTICSEARCH_TAG=6.7-4.1.2
#ELASTICSEARCH_TAG=5.6-4.1.2

### --- KIBANA ---

KIBANA_TAG=6.7-4.1.1
#KIBANA_TAG=5.6-4.1.1

### --- REDIS ---

REDIS_TAG=4-3.0.6
#REDIS_TAG=5-3.0.6

### --- NODE ---

NODE_TAG=10-0.12.0
#NODE_TAG=8-0.12.0
#NODE_TAG=6-0.12.0

### --- VARNISH ---

VARNISH_TAG=4.1-4.2.7
#VARNISH_TAG=6.0-4.2.7

### --- POSTGRESQL ----

POSTGRES_TAG=11-1.6.1
#POSTGRES_TAG=10-1.6.1
#POSTGRES_TAG=9.6-1.6.1
#POSTGRES_TAG=9.5-1.6.1
#POSTGRES_TAG=9.4-1.6.1

### OTHERS

ADMINER_TAG=4-3.5.7
APACHE_TAG=2.4-4.0.6
ATHENAPDF_TAG=2.10.0
DRUPAL_NODE_TAG=1.0-2.0.0
MEMCACHED_TAG=1-2.2.2
OPENSMTPD_TAG=6.0-1.4.1
RSYSLOG_TAG=latest
WEBGRIND_TAG=1.5-1.9.7
XHPROF_TAG=1.3.7" >> /home/ubuntu/modus-sesamo-sandbox/.env
# Kick off make process for Wodby
cd /home/ubuntu/modus-sesamo-sandbox
composer install
sudo make up
