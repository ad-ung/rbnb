class VillasController < ApplicationController
  skip_before_action :authenticate_user!

  def index # ne montre que les résultats de la searchbar de la homepage
    @villas = []
    Feature.where(guest_nb: params["search"][:guest_nb]).each do |f|
      if f.villa.unavailable_dates.exclude? (params["search"][:starts_on].to_date)
        if f.villa.unavailable_dates.exclude? (params["search"][:ends_on].to_date)
          if f.villa.city = params["search"][:city]
            @villas << f.villa
          end
        end
      end
    end
  end

  def show
    @villa = Villa.find(params[:id])
    @booking = Booking.new

    @favorite = Favorite.where(user_id: current_user.id, villa_id: @villa.id)
    if !@favorite.exists?
      @favorite = nil
    end
    @favorites = Favorite.all
  end

end
