class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create, :new]
  
  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      render :new # Render the 'new' template for review creation
    end
  end


  def new
    @review = @restaurant.reviews.build
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
