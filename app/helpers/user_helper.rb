# user_helper.rb

helpers do

  def session_logged_in?
    !session[:current_user_id].blank?
  end

  def session_current_user
    User.find_by(session[:current_user_id])
  end

end
