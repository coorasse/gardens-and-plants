class PlantsController < ApplicationController
    def new
        @garden = Garden.find(params[:garden_id])
        @plant = Plant.new
    end

    def create
        @garden = Garden.find(params[:garden_id])
        @plant = Plant.new(params.require(:plant).permit(:name, :img_url))
        @plant.garden = @garden
        @plant.save
        redirect_to @garden
    end
end
