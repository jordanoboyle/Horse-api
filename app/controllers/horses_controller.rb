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

  def show
    @horse = Horse.find_by(id: params[:id])
    render template: "horses/show"
  end

  def update
    @horse = Horse.find_by(id: 5)
    @horse.name = "Lamb Chop"
    @horse.color = "red brown"
    @horse.weight = 689
    @horse.price = 68900

    @horse.save

    render template: "horses/show"

  end 

end
