class SchoolClassesController < ApplicationController
  def show 
    find_params
  end
  
  def new 
    @school_class = SchoolClass.new
  end

  def edit 
    find_params
  end
  
  
  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
		@school_class.update(school_class_params(:title, :room_number))
		redirect_to school_class_path(@school_class)
  end

  private

	def school_class_params(*args)
		params.require(:school_class).permit(*args)
	end

  def find_params
    @school_class = SchoolClass.find(params[:id])
  end
end
