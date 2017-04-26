class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def profile
    @user = User.find(current_user.id)
  end
end
