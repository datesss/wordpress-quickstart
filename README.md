## wordpress quickstart
Run wordpress in docker containers for speed and fun !


## install
- copy `.env.config` to `.env` and add your own values.
- `npm install`

That's it! Wordpress is running!
Visit your localhost in your browser, or start hacking away in `wp-content`.
The startup script adds wp-cli to the docker and alias' it into the shell so you can ran wp-cli commands. `wp post list` for example.


## commands
- `npm run stop` Stops the containers, makes those ports available for your other valuable project.
- `npm run start` Starts the containers back up.
- `docker ps` list running dockers
- `docker exec -ti __CONTAINER_NAME__ bash` get shell inside container

