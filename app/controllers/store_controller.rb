class StoreController < ApplicationController
  skip_before_action :authorize
  before_action :access_count, only: [:index]
  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title)
  end
  def access_count
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
