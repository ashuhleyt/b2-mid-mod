class EmployeesController < ApplicationController 
  def show
    @employee = Employee.find(params[:id])
    # require 'pry'; binding.pry
  end
end