class HorsesController < ApplicationController

  def create
    @horse = Horse.new(
      name: params[:name],
      color: params[:color],
      weight: params[:weight],
      price: params[:price],
    )
    @horse.save
    render :show
  end

  def index
    @horses = Horse.all 
    render template: "horses/index"
  end

end
