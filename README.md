## wordpress quickstart
Run wordpress in docker containers for speed and fun !


## install
- copy `.env.config` to `.env` and add your own values.
- `npm install`

That's it! Wordpress is running!
Visit your localhost in your browser, or start hacking away in `wp-content`.
The startup script adds wp-cli to the docker and alias' it into the shell so you can ran wp-cli commands. `wp post list` for example.

## notes
I think i have to comment out the wp-cli before first install (?)
production.yml is old / probably shitty
TODO:
actually incorporate  local / dev / production environment files
dream: githook to create subdomain for feature branches.

## commands
- `npm run stop` Stops the containers, makes those ports available for your other valuable project.
- `npm run start` Starts the containers back up.
- `docker ps` list running dockers
- `docker exec -ti __CONTAINER_NAME__ bash` get shell inside container

## so you want to go to Production?
- look up docker digital ocean
- docker-machine env DO
- docker-compose up

## old production
- ` gcloud auth login`
- `docker-machine create --driver google --google-project PROJECT_ID vm01`
- `docker-machine env vm01`
- `docker-compose -f production.yml up -d`
- `docker-machine ip em01`

## push to prod
- `docker-machine scp -r PATHTOREPO/site vm01:/dockerVols`
