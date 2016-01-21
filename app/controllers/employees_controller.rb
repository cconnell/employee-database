class EmployeesController < ApplicationController

  def single
    @employee = Employee.first  
  end

  def index
    @employees = Employee.all
  end

  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])

    @employee.update ({
                        first_name: params[:first_name],middle_name: params[:middle_name],
                        last_name: params[:last_name],
                        job_title: params[:job_title],
                        salary: params[:salary],
                        phone_number: params[:phone_number],
                        gender: params[:gender], bio: params[:bio]

      })

    redirect_to "/employees/#{@employee[:id]}"

  end

  def show
    @employee = Employee.find(params[:id])
    
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to "/"

  end

  def create
    @employee = Employee.create

    @employee.update ({
                        first_name: params[:first_name],middle_name: params[:middle_name],
                        last_name: params[:last_name],
                        job_title: params[:job_title],
                        salary: params[:salary],
                        phone_number: params[:phone_number],
                        gender: params[:gender], bio: params[:bio]

      })

    redirect_to "/employees/#{@employee[:id]}"

  end

end

