class JobsController < ApplicationController

	before_action :authenticate_user!


  def index
  	@jobs = Job.all
  end

  def show
  end


  def create
  	@job = Job.create(job_params)
  	redirect_to '/profiles/show'

  end





  private


 	def job_params
 		params.require(:job).permit(:destination, :cost, :origin, :description, :containers, :user_id)

 	end
end
