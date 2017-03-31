class PagesController < ApplicationController

  include SearchFilter
  before_action :search_filter

  def home
  end

  def about
  end

end
