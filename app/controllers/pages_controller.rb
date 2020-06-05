class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @villas = Villa.all
    @disable_nav = true
  end

  def index
    @villas = Villa.all
  end
end
