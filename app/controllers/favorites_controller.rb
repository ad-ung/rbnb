class FavoritesController < ApplicationController
  before_action :set_villa, except: [:index]
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
    #@villa = @favorite.villa
  end

  def create
    @favoris = Favorite.new
    @favoris.villa = @villa
    @favoris.user = current_user
    @favoris.save
  end


  private

  def set_villa
    @villa = Villa.find(params[:id])
  end
end
