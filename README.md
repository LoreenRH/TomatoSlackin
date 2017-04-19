# TomatoSlakin

To install :
Create a bot on slack, get the API tocken

create a .env file with SLACK_API_TOKEN=...
run bundle install


To run locally :

install Foreman (gem install foreman -v 0.82.0)


To run on Heroku :
git init
git add .
git commit -m "install on heroku"

heroku create
heroku config:add SLACK_API_TOKEN=..
git push heroku master

To use :
[your bot name] calculate --> prints 4
[your bot name] pomodoro --> prints Hi there ;) I'm magnum on heroku