class BoatsController < ApplicationController
	before_action :authenticate_user!


  def index
  	@boats = Boat.all
  end

  def show
  end


  def create
  	@boat = Boat.create(boat_params)
  	redirect_to '/profiles/show'

  end





  private


 	def boat_params
 		params.require(:boat).permit(:name, :location, :containers)

 	end
end

