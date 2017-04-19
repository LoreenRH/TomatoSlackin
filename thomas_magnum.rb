require 'slack-ruby-bot'

class ThomasBot < SlackRubyBot::Bot
  command 'pomodoro' do |client, data, match|
    client.say(text: 'Hey there ;) Timer Started !', channel: data.channel)
    sleep(10) #arbitrary stop to simulate pomodoro
    client.say(channel:data.channel, text: 'Time up! Good work!', gif: 'random funny')
    pid = fork{ exec 'mpg123', '-q', 'crickets.mp3'}
  end
end

ThomasBot.run
