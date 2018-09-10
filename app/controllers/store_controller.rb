class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
    @counter = session[:counter] += 1
    if session[:counter].nil?
      session[:counter] = 0
  end
end
end
