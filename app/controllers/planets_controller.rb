class PlanetsController < ApplicationController
  PLANETS_PER_PAGE = 10

  def index
    @page = params.fetch(:page, 0).to_i
    @planets = Planet.offset(@page * PLANETS_PER_PAGE).limit(PLANETS_PER_PAGE)
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def search
    search = "%#{params[:keywords]}%"
    @planets = Planet.where("planet_name LIKE ?", search)
    end
end
