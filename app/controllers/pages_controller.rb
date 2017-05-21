class PagesController < ApplicationController
  skip_before_action :set_location
  skip_before_action :set_cart

  def home
  end

  def about
  end

end
