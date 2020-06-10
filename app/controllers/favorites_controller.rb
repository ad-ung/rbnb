class FavoritesController < ApplicationController
  before_action :set_villa, only: [:create]
  def index
    @favorites = Favorite.all
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @favorite = Favorite.new
    @favorite.villa = @villa
    @favorite.user = current_user
    @in_favorite_list = true
    @favorite.save
  end


  def update
    @all_favorites = [] << @favorites
    if @all_favorites.include?(@villa)
      @all_favorites.delete(@villa)
      @in_favorite_list = false
    else
      @favorite = Favorite.new(favorite_params)
      @favorite.villa = @villa
      @favorite.user = current_user
      @favorite.save
      @in_favorite_list = true
    end

  end

  def destroy
    @favorite.destroy
    @in_favorite_list = false
  end

  private

  def set_villa
    @villa = Villa.find(params[:villa_id])
  end
end
