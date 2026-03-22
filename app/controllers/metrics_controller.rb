class MetricsController < ApplicationController
  def country
    employees = Employee.where(country: params[:country])

    render json: {
      min: employees.minimum(:salary) || 0,
      max: employees.maximum(:salary) || 0,
      avg: employees.average(:salary)&.to_f || 0
    }
  end

  def job_title
    employees = Employee.where(job_title: params[:job_title])

    render json: {
      avg: employees.average(:salary)&.to_f || 0
    }
  end
end