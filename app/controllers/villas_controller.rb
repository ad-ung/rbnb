class VillasController < ApplicationController
  skip_before_action :authenticate_user!

  def index # ne montre que les résultats de la searchbar de la homepage
    @villas = []
    Feature.where("guest_nb >= ?", params["search"][:guest_nb]).each do |f|
      if available?(f.villa, params["search"][:starts_on].to_date, params["search"][:ends_on].to_date)
        if f.villa.city == params["search"][:city].split(',')[0]
          @villas << f.villa
          @favorite = Favorite.where(user: current_user, villa_id: f.villa.id)
          if !@favorite.exists?
            @favorite = nil
          end
        end
      end
    end
  end

  def show
    @villa = Villa.find(params[:id])
    @booking = Booking.new

    @favorite = Favorite.where(user: current_user, villa_id: @villa.id)
    if !@favorite.exists?
      @favorite = nil
    end

    @markers = [ {
      lat: @villa.latitude,
      lng: @villa.longitude
    } ]
  end

  private

  def available?(villa, date_start, date_end)
    result = true
    villa.unavailable_dates.each do |b|
      if (b.include?(date_start)) || (b.include?(date_end))
        result = false
      end
    end
    return result
  end

end
