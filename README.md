# TomatoSlakin

To install :

- Create a bot on slack, get the API token

- Git clone --> git clone git@github.com:amontourdeprogrammer/TomatoSlackin.git
- $cd TomatoSlackin/
- create a .env file with SLACK_API_TOKEN=...
- run $bundle install


To run locally :
- install Foreman (gem install foreman -v 0.82.0)
- Run $foreman start

To run on Heroku :
- heroku create
- heroku git:remote -a [name of heroku app]
- heroku config:add SLACK_API_TOKEN=..
- git push -f heroku heroku-branch:master

To use :
- [your bot name] calculate --> prints 4
- [your bot name] pomodoro --> prints Hi there ;) I'm magnum on heroku
