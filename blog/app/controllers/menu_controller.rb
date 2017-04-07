class MenuController < ApplicationController
  helper_attr :update_profile
  def index
  end

  def countries
  end

  def about
  end

  def profile
    usr = User.create(:username => 'Petter')
    usr.username
  end
end
