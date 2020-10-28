class CharactersController < ApplicationController
  def index
    @casts = Cast.all
  end
  def show
    @casts = Cast.find(params[:id])
  end
end
