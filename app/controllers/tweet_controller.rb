post '/tweets' do
  session_current_user.tweets.create(content: params[:content])
  redirect '/'
end

