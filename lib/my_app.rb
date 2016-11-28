require 'sinatra/base'
require_relative 'pair'

class AnyValue < Sinatra::Base
  set :port, 4000

  def initialize
      super
      @pair = Pair.new
  end

  get '/' do
    erb :index
  end

  get '/set' do
    key = params[:somekey]
    value = params[:somevalue]
    @pair.setKeyValue(key, value)
  end

  get '/get' do
    key = params[:somekey]
    value = @pair.getValue(key)
    p value
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
