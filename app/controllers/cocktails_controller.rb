class CocktailsController < ApplicationController

  def index
    @cocktail = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
