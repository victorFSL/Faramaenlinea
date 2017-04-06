class PagesController < ApplicationController

  include SearchFilter
  before_action :search_filter

  def home
    @state = State.find(1)
    @city = City.find(1)
  end

  def about
  end

end
