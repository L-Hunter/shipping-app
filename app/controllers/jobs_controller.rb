class JobsController < ApplicationController

	before_action :authenticate_user!


  def index
  	@jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end


  def create
  	@job = Job.create(job_params)
  	redirect_to @job

  end

  def add_to_job
    @boat = Boat.find(params[:boat_id])
    current_user.job.boats.push(@boat)
    redirect_to '/profiles/show'

  end





  private


 	def job_params
 		params.require(:job).permit(:destination, :cost, :origin, :description, :containers, :user_id)

 	end
end
