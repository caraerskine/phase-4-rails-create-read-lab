class PlantsController < ApplicationController

#POST /plants
 def create
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant, status: :created
 end


    #GET /plants
 def index
    plants = Plant.all
    render json: plants   
 end   

 #GET /plants/:id

 def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
    end





 end