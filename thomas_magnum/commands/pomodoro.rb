module ThomasMagnum
  module Commands
    class Pomodoro < SlackRubyBot::Commands::Base
      command 'pomodoro' do |client, data, _match|
        client.say(channel: data.channel, text: "Hi there ;) I'm magnum on heroku")
      end
    end
  end
end
