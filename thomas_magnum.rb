require 'slack-ruby-bot'

class ThomasBot < SlackRubyBot::Bot
	puts 'coucou 1'
  command 'pomodoro' do |client, data, match|
  	puts 'coucou 2'
    client.say(text: 'Hey there ;) !', channel: data.channel)
  end
end

puts 'coucou'
ThomasBot.run