require 'sinatra/base'

module ThomasMagnum
  class Web < Sinatra::Base
    get '/' do
      'Magnum is good for you.'
    end
  end
end
