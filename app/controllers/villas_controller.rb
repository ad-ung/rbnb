class VillasController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @city = params[:city]
    if @city.present?
      @villas = Villa.where(city: params[:city])
    end
  end

  def show
  end
end
