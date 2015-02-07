post '/tweets' do
  session_current_user.tweets.create(content: params[:content], original_user_id: session_current_user.id)
  redirect '/'
end

get '/tweets/retweet/:tweet_id' do
  tweet = Tweet.find(params[:tweet_id])
  Tweet.create(content: tweet.content, original_user_id: tweet.original_user_id, user_id: session_current_user.id)
  erb :profile
end
