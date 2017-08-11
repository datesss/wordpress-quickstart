if [[ $# -eq 0 ]] ; then
  export $(cat .env.local | xargs)
  docker-machine env -u
  eval $(docker-machine env -u)
  # docker-compose up -d
  alias wpd="docker-compose run cli wp"
  echo "alias wpd='docker-compose run cli wp';" >> ~/.bash_profile
else
  export $(cat .env.$1 | xargs)
  docker-machine env ${DOCKER_MACHINE}
  eval $(docker-machine env ${DOCKER_MACHINE})
  # docker-compose up -d
  alias wpd="docker-compose run cli wp"
  echo "alias wpd='docker-compose run cli wp';" >> ~/.bash_profile
fi

