class PlanetsController < ApplicationController
  def index
    @planets = World.all
  end

  def show
    @planet = World.find(params[:id])
  end

  def search
    search = "%#{params[:keywords]}%"
    @planets = World.where("name LIKE ?", search)
    end
end
