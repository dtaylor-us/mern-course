#!/bin/bash

export DATABASE_URL=$(heroku config | grep CLEARDB_DATABASE_URL | sed 's/^.*: //')
export HEROKU_URL=$(heroku apps:info -s  | grep web_url | cut -d= -f2)

start_app() {
    clear
    echo "( ∆ )     Starting Node Application..."
    npm start
    clear
    echo "( ∆ )     Exited Node Application."
}

start_app() {
    clear
    echo "( ∆ )     Starting Node Application..."
    npm start
    clear
    echo "( ∆ )     Exited Node Application."
}

deploy() {
    git push heroku master
}
 
case $1 in
    start)
        start_app
        ;;
    deploy)
        deploy
        ;;
    
    esac
exit 0