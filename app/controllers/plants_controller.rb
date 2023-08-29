class PlantsController < ApplicationController
    def index
        plants = Plants.all
        render json: plants        
    end
    
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end
    

    private

    def plant_params
        params.require(:plant).permit(:name, :image, :price)
    end
end
