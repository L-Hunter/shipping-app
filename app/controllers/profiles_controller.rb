class ProfilesController < ApplicationController
  def index

  end

  def show
  @jobs = Job.all
  @boats = Boat.all

  end


  def create_job
  	

  end
end
