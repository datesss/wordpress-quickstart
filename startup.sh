docker-compose up -d
alias wp="docker-compose run cli wp"
export $(cat .env | xargs)
echo "alias wp='docker-compose run cli wp';" >> ~/.bash_profile
source ~/.bash_profile
wp core install --url="localhost" --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
