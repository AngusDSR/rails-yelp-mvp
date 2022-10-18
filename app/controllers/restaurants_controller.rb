class RestaurantsController < ApplicationController
  # before_action @restaurant = Restaurant.find(params[:id])

  def index
    @restaurants = Restaurant.all
  end
end
