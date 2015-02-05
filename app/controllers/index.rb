get '/users/new' do
  erb :register
end

post '/users' do
  @user = User.create(username: params[:new_username], email: params[:new_email], password: params[:new_password])

  redirect '/profile/:id' # still needs profile page
end
