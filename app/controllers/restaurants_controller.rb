class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
