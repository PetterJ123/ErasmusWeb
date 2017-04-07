class MenuController < ApplicationController
  helper_attr :profile
  def index
  end

  def countries
  end

  def about
  end

  def profile
    @usr = User.create(:username => 'Petter')
  end
end
