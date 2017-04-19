require 'slack-ruby-bot'
require 'timers'

class ThomasBot < SlackRubyBot::Bot
  command 'pomodoro' do |client, data, _match|
    client.say(text: "<@#{data.user}> just started a Pomodoro session!", channel: data.channel)
    timers = Timers::Group.new

    minutes_duration = 5
    minutes_left = 5

    pomodoro_timer = timers.now_and_every(60) do
      message = (minutes_left == 0 ? "<@#{data.user}> just finished a Pomodoro session!" : minutes_left.to_s + ' minutes left!' )
      client.say(text: message, channel: data.channel)
    end

    minutes_duration.times do
      minutes_left -= 1
      timers.wait
    end
  end
end

ThomasBot.run
