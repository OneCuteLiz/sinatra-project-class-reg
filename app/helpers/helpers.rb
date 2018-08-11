class Helpers
  
  def self.current_user(session)
    User.find_by(id: session[:user_id])
  end
  
  def self.is_logged_in?(session)
    !!session[:user_id]
    # :user_id will be nil and thus falsey if you haven't logged in
    # !!turns falsey values to 'false'
  end
end