class ApplicationController < ActionController::Base
  include CurrentCart, SearchFilter
  before_action :set_location, :search_filter
  before_action :set_cart

  protect_from_forgery with: :exception


end
