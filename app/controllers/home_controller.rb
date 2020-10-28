class HomeController < ApplicationController
  def index
    @page = params.fetch(:page, 0).to_i
    @planets = Planet.offset(@page * PLANETS_PER_PAGE).limit(PLANETS_PER_PAGE)
  end
end
