class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:villa_id])
    #@villa = @favorite.villa
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @favoris = Favorite.new
    @favoris.villa = @villa
    @favoris.user = current_user
    @favoris.save
  end


  private

  def set_villa
    @villa = Villa.find(params[:villa_id])
  end
end
