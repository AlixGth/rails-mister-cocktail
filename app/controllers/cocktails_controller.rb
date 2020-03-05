class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
  	@cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new(params[:cocktail])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktails)
    else
      render :new
    end
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
