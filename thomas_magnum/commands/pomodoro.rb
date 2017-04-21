module ThomasMagnum
  module Commands
    class Pomodoro < SlackRubyBot::Commands::Base
      command 'pomodoro' do |client, data, _match|
        client.say(text: "<@#{data.user}> just started a Pomodoro session!", channel: data.channel)
        timers = Timers::Group.new

        minutes_in_pomodoro_session = 0.10
        seconds_in_pomodoro_session = minutes_in_pomodoro_session * 60

        pomodoro_timer = timers.after(seconds_in_pomodoro_session) do
          client.say(text: "<@#{data.user}> just finished a Pomodoro session!", channel: data.channel, gif: 'tomato')
        end

        timers.wait
      end
    end
  end
end
