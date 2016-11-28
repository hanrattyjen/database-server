require 'sinatra/base'

class AnyValue < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/' do
    redirect '/set'
  end

  get '/set' do
    erb :index
  end

  post '/setvalues' do
    @somekey = params[:somekey]
    @somevalue = params[:somevalue]
    erb :values
  end

  get '/get' do
    @somekey = params[:somekey]
    @somevalue = params[:somevalue]
    erb :values
  end

  get '/getvalues' do
    @somekey = params[:somekey]
    @somevalue = params[:somevalue]
    erb :values
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
