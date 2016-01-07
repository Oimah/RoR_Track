class StoreController < ApplicationController
  before_action :access_count, only: [:index]
  
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
