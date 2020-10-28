class PlanetsController < ApplicationController
  PLANETS_PER_PAGE = 10

  def index
    @page = params.fetch(:page, 0).to_i
    @planets = World.offset(@page * PLANETS_PER_PAGE).limit(PLANETS_PER_PAGE)
  end

  def show
    @planet = World.find(params[:id])
  end

  def search
    search = "%#{params[:keywords]}%"
    @planets = World.where("name LIKE ?", search)
    end
end
