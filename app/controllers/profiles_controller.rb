class ProfilesController < ApplicationController
  def index

  end

  def show
  @jobs = Job.all
  @boats = Boat.all
  @current_user = current_user

  end


  def create_job
  	

  end
end
