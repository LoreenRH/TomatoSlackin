# TomatoSlakin

To install :

- Create a bot on slack, get the API tocken

- Git clone --> git clone -b heroku-branch git@github.com:amontourdeprogrammer/TomatoSlackin.git
- $cd TomatoSlackin/
- create a .env file with SLACK_API_TOKEN=...
- run $bundle install


To run locally :
Delete gemlock/.env
install Foreman (gem install foreman -v 0.82.0)
Run $foreman start

To run on Heroku :
git init
git add .
git commit -m "install on heroku"

heroku create
heroku config:add SLACK_API_TOKEN=..
git push heroku heroku-branch:master

To use :
[your bot name] calculate --> prints 4
[your bot name] pomodoro --> prints Hi there ;) I'm magnum on heroku
