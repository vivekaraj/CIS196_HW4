class JobseekersController < ApplicationController
  def new
  	@jobseeker = Jobseeker.new
  end

  def show
    @jobseeker = Jobseeker.find(params[:id])
  end

  def index
  	@jobseekers = Jobseeker.all
  end

  def edit
    @jobseeker = Jobseeker.find(params[:id])
  end

  def update
    @jobseeker = Jobseeker.find(params[:id])
    if @jobseeker.update_attributes(jobseeker_params)
      redirect_to jobseeker_path(@jobseeker.id)
    else
      render 'edit'
    end
  end

  def delete
  end

  def destroy
    @jobseeker = Jobseeker.find(params[:id])
    @jobseeker.destroy
    redirect_to jobseekers_path
  end

  def create
  	@jobseeker = Jobseeker.new(jobseeker_params)
  	if @jobseeker.save
      Notifications.new_comment(@employee).deliver
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
