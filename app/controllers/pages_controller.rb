class PagesController < ApplicationController
  skip_before_action :set_state_city

  def home
    @state = State.find(1)
    @city = City.find(1)
  end

  def about
  end

end
