###

## install

`docker-compose up -d`

### add wp-cli
```curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
docker cp wp-cli.phar dockerwordpress_wordpress_1:/usr/local/bin/wp
alias wp="docker exec dockerwordpress_wordpress_1 wp --allow-root"
export $(cat .env | xargs)```

### finish setting up site
```
wp core install --url="localhost" --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
```

## commands to stop
`docker-compose down`
`docker-compose down -v` (removes volume)
`docker-compose down -v -rmi all`  (removes images / fresh start)
`docker exec -ti __CONTAINER_NAME__ bash` get shell inside container
