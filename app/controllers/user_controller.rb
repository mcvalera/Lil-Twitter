# user_controller.rb
get '/' do
  @tweets = Tweet.all
  erb :index
end

get '/users/new' do
  erb :register
end

post '/users' do
  user = User.create(username: params[:username], email: params[:email], password: params[:password])
  session[:current_user_id] = user.id
  redirect "users/#{user.id}"
end

post '/login' do
  user = User.find_by_username(params[:username])
  if user.password == params[:password]
    session[:current_user_id] = user.id
    redirect "users/#{user.id}"
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

get '/users/:id' do
  user = session_current_user
  digest_hash = Digest::MD5::hexdigest(user.email.downcase)
  session[:gravatar_image_link] = "http://www.gravatar.com/avatar/#{digest_hash}"
  erb :profile
end

#{}"tosharmila@gmail.com"


