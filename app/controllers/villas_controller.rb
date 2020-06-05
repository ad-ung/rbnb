class VillasController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @villas = []
    Feature.where(guest_nb: params["search"][:guest_nb]).each do |f|
      @villas << f.villa
    end
  end

  def show
    @villa = Villa.find(params[:id])
  end
end
