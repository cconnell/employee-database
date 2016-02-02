class EmployeesController < ApplicationController

  def single
    @employee = Employee.first  
  end

  def index
    @employees = Employee.all

    if params[:group]
      @employees = Group.find_by(name: params[:group]).employees
      @employees = @employees.where(user_id: current_user.id)
    end
  end

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
                        gender: params[:gender], bio: params[:bio], user_id: [:current_user]

      })

    redirect_to "/employees/#{@employee[:id]}"

  end

  def show
    @employee = Employee.find(params[:id])
    @groups = @employee.groups
    
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
                        gender: params[:gender], bio: params[:bio], user_id: [:current_user]

      })

    redirect_to "/employees/#{@employee[:id]}"

  end

  def address
    address

  end

  def random
    @employee = Employee.all.sample
    
    render :show
  end

  def search
       @employees = Employee.where("first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR job_title LIKE ? OR salary LIKE ? OR phone_number LIKE ? OR gender LIKE ? OR middle_name LIKE ? OR bio LIKE ? ", "#{params[:search]}", "#{params[:search]}", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")

    render :index
  end
end
