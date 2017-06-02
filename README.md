## wordpress quickstart
If you're like me, you hate "MAMP", everytime you switch local projects / environments you are fiddling with your apache configs, its a headache.
Run wordpress in docker containers for speed and fun !

## install
copy `.env.config` to `.env` and add your own values.
`npm install`

That's it! visit your localhost and you got a wordpress runnin, start hacking away in `wp-content`. The startup script adds wp-cli to the docker and alias' it into the shell so you can `wp post list` for example.


## commands
`npm run stop` Stops the containers, makes those ports available for your other valuable project.
`npm run start` Starts the containers back up.

`docker exec -ti __CONTAINER_NAME__ bash` get shell inside container

