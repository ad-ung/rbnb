class VillasController < ApplicationController
  def index
    @city = params[:city]
    if @city.present?
      @villas = Villa.where(city: params[:city])
    end
  end

  def show
  end
end
