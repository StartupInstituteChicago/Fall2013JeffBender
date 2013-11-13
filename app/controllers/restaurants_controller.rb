class RestaurantsController < ApplicationController
  before_filter :authenticate_owner!, except: [:index, :show]

  def index
    @restaurants = Restaurant.all
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
    	redirect_to @restaurant
    else
      render 'new'
    end
  end
  
  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.owner == current_owner
       @restaurant.destroy
    else
      flash[:error] = 'Sorry you are not the current owner.'
    end
      redirect_to restaurants_path
  end
  
  def edit 
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.owner != current_owner
      flash[:error] = 'Sorry you are not the current owner.'
      redirect_to restaurants_path
    end
  end
  
  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.owner == current_owner
      if @restaurant.update(restaurant_params)  
        redirect_to @restaurant
      else
        render 'edit'
      end
    else
     flash[:error] = 'Sorry you are not the current owner!'
     redirect_to restaurants_path
    end
  end
    
  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant.owner = current_owner
  end
  
  private
   def restaurant_params
     params.require(:restaurant).permit(:name, :description, :address, :phone, :image, :image_url, :menu, :menu_url, :remove_image)
   end
end 
