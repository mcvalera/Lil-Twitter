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
    erb :profile # still needs profile page
end


