class MenuController < ApplicationController
    helper_method :index, :name
  def index
    # user = User.create(:username => 'Petter')
    # user.username
    # user.save
  end

  def countries
  end

  def about
  end

  def profile_params
  end

  def name=(new_name)
    write_attribute(:username, new_name)
  end
end
