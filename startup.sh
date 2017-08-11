export $(cat .env.local | xargs)
# set -a # export all variables created next
# source .env.local
# set +a # stop exporting

docker-machine env -u
eval $(docker-machine env -u)

alias wpd="docker-compose run cli wp"
docker-compose -f local.yml up -d
echo "alias wpd='docker-compose run cli wp';" >> ~/.bash_profile
wp core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
