docker-compose up -d
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
docker cp wp-cli.phar dockerwordpress_wordpress_1:/usr/local/bin/wp
rm wp-cli.phar
alias wp="docker exec dockerwordpress_wordpress_1 wp --allow-root"
export $(cat .env | xargs)
wp core install --url="localhost" --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
