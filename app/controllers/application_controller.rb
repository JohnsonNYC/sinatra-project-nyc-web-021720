class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set(:views, 'app/views')

  get '/' do 
    erb :welcome
  end

  get '/users' do 
    @users = User.all 

    erb :index
  end

  get '/users/new' do
    user = User.create(params[:user])
    erb :new
  end

  post '/users'
end
