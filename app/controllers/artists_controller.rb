class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  def show
    id = params[:id]
    @artist = Artist.find(id)
    @shows = @artist.shows
  end
end