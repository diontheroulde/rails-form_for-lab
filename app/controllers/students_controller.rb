class StudentsController < ApplicationController
  def show 
    find_params
  end
  
  def edit 
    find_params
  end

  def new 
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
		@student.update(student_params(:first_name, :last_name))
		redirect_to student_path(@student)
  end

  private

	def student_params(*args)
		params.require(:student).permit(*args)
	end

  def find_params
    @student = Student.find(params[:id])
  end
end
