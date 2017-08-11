if [[ $# -eq 0 ]] ; then
  export $(cat .env.local | xargs)
 docker-machine env -u
 eval $(docker-machine env -u)
 alias wpd="docker-compose run cli wp"
 docker-compose up -d
 wpd core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
else
  export $(cat .env.$1 | xargs)
  docker-machine env ${DOCKER_MACHINE}
  eval $(docker-machine env ${DOCKER_MACHINE})
  alias wpd="docker-compose run cli wp"
  docker-compose up -d
  wpd core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
fi