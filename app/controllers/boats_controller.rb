class BoatsController < ApplicationController
	before_action :authenticate_user!


  def index
  	@boats = Boat.all.order(:available)

  end

  def show
  end


  def create
  	@boat = Boat.create(boat_params)
    if @boat.save
      redirect_to '/profiles/show'
    else
      flash[:notice] = "Error creating boat!!!"
      render new_boat_path
    end
  end

def make_available_path
boat.update(available: true)
redirect_to boats_path
end



  private


 	def boat_params
 		params.require(:boat).permit(:name, :location, :containers, :avatar)

 	end
end

