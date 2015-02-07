# profile_helper.rb

helpers do

  def show_tweets?
    session[:show_profile_partial] == "tweets"
  end

  def show_following?
    session[:show_profile_partial] == "following"
  end

  def show_followers?
    session[:show_profile_partial] == "followers"
  end

  def show_feed
    session[:show_profile_partial] == "feed"
  end

  def gravatar_image
    session[:gravatar_image_link]
  end

end

