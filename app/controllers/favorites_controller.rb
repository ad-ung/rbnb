class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @favorite = Favorite.new
    @favorite.villa = @villa
    @favorite.user = current_user
    @favorite.save
    redirect_to villa_path(@villa)
  end



  def destroy
    @villa = Villa.find(params[:id])
    @favorite = Favorite.where(user_id: current_user.id, villa_id: @villa.id)
    Favorite.destroy(@favorite.first.id)
    redirect_to villa_path(@villa)
  end



end
