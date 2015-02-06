
get '/user/:id/tweets' do
  session[:show_profile_partial] = "tweets"
  erb :profile
end

get '/user/:id/followers' do
  session[:show_profile_partial] = "followers"
  erb :profile
end

get '/user/:id/following' do
  session[:show_profile_partial] = "following"
  erb :profile
end

get '/user/:id/feed' do
  session[:show_profile_partial] = "feed"
  erb :profile
end

