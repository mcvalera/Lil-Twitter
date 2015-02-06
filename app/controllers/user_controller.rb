# user_controller.rb
get '/' do
  @tweets = Tweet.all
  erb :index
end

post '/login' do
  user = User.find_by_username(params[:username])
  if user.password == params[:password]
    session[:current_user_id] = user.id
    erb :profile
  else
    @error_message = "Invalid username or password"
    erb :index
  end
end

get '/logout' do
  session.clear
  @tweets = Tweet.all
  erb :index
end
