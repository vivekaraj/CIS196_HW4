class EmployeesController < ApplicationController
  def new
  	@employee = Employee.new
  end

  def index
  	@employees = Employee.all
  end

  def edit
  end

  def delete
  end

  def create
  	@employee = Employee.new(employee_params)
  	if @employee.save
  		redirect_to employees_path
	else
		render 'new'
	end
  end

  private
  def employee_params
  	params.require(:employee).permit(:name, :category, :company, :email)
  end
end
