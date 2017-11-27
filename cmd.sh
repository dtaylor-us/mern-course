#!/bin/bash

# export DATABASE_URL=$(heroku config | grep CLEARDB_DATABASE_URL | sed 's/^.*: //')
# export HEROKU_URL=$(heroku apps:info -s  | grep web_url | cut -d= -f2)

start_app() {
    clear
    echo "Starting Node Application..."
    npm run dev
    echo "Exited Node Application."
}

deploy() {
    clear
    echo "Deploying Node application to Heroku server..."
    git push heroku master
}

push() {
    clear
    echo "Pushing project to Github repository..."
    git push origin master
}
 
case $1 in
    start)
        start_app
        ;;
    deploy)
        deploy
        ;;
    push)
        push
        ;;
    esac
exit 0