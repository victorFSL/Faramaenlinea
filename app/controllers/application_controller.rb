class ApplicationController < ActionController::Base
  include CurrentCart, SearchFilter

  protect_from_forgery with: :exception
  before_filter :set_cart, :search_filter

end
