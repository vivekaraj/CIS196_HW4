class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      redirect_to employee_path(@employee.id)
    else
      render 'edit'
    end
  end

  def delete
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      Notifications.new_comment(@employee).deliver
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
