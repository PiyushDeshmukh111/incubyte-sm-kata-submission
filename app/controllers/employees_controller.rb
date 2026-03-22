class EmployeesController < ApplicationController
    def index
      render json: Employee.all
    end
  
    def show
      render json: Employee.find(params[:id])
    end
  
    def create
      employee = Employee.new(employee_params)
      if employee.save
        render json: employee, status: :created
      else
        render json: { errors: employee.errors }, status: :unprocessable_entity
      end
    end
  
    def update
      employee = Employee.find(params[:id])
      employee.update(employee_params)
      render json: employee
    end
  
    def destroy
      Employee.find(params[:id]).destroy
      head :no_content
    end
  
    private
  
    def employee_params
      params.require(:employee).permit(:full_name, :job_title, :country, :salary)
    end
  end