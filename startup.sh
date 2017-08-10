docker-compose up -d
alias wpd="docker-compose run cli wp"
export $(cat .env | xargs)
echo "alias wpd='docker-compose run cli wp';" >> ~/.bash_profile
wp core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
