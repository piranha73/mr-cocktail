class CocktailsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    raise
  end
end
