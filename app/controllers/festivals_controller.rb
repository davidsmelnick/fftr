class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end
  def show
    id = params[:id]
    @festival = Festival.find(id)
    @shows = @festival.shows
  end
end
