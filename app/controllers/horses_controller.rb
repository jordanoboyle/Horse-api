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
    @horse = Horse.find_by(id: params[:id] )
    @horse.name = params[:name] || @horse.name
    @horse.color = params[:color] || @horse.color
    @horse.weight = params[:weight] || @horse.weight
    @horse.price = params[:price] || @horse.price
    @horse.save

    render template: "horses/show"
  end 

  def destroy
    @horse = Horse.find_by(id: params[:id])
    @horse.destroy

    render template: "horses/show"
  end

end
