class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  def show
    name = params[:name]
    @artist = Artist.find_by(:name => name)
    @shows = @artist.shows
  end
end
