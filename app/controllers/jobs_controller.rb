class JobsController < ApplicationController

	before_action :authenticate_user!


  def index
  	@jobs = Job.all
  end

  def show
    @user = User.find(params[:id])
    @job = Job.find(params[:id])
    @boats = Boat.all
  end


  def create
  	@job = Job.create(job_params)
  	redirect_to @job

  end

  def add_to_job
    @job = Job.find(params[:id])
    @boat = Boat.find(params[:boat_id])
    @job.boats.push(@boat)
    redirect_to job_path

  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to '/profiles/show'

  end

  def remove_from_job
    @job = Job.find(params[:id])
    @boat = Boat.find(params[:boat_id])
    @job.boats.delete(@boat)
    redirect_to job_path

  end




  private


 	def job_params
 		params.require(:job).permit(:destination, :cost, :origin, :description, :containers, :user_id)

 	end
end
