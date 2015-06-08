class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end
  def show
    name = params[:name]
    @festival = Festival.find_by(:name => name)
  end
end
