class EmployeesController < ApplicationController

  def single
    @worker = Employee.first  
  end

  def index
    @workers = Employee.all
  end

  def edit
  
  end
  
  def show
    @worker = Employee.find(params[:id])
    
  end

  def delete
    
  end

  def create

  end

end

