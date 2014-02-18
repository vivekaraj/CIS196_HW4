class JobseekersController < ApplicationController
  def new
  	@jobseeker = Jobseeker.new
  end

  def index
  	@jobseekers = Jobseeker.all
  end

  def edit
  end

  def delete
  end

  def create
  	@jobseeker = Jobseeker.new(jobseeker_params)
  	if @jobseeker.save
  		redirect_to jobseekers_path
	else
		render 'new'
	end
  end

  private
  def jobseeker_params
  	params.require(:jobseeker).permit(:name, :category, :email)
  end
end
