class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(class_params(:title, :room_number))
    redirect_to student_path(school_class)
  end

  private

	def student_params(*args)
	  params.require(:student).permit(*args)
	end
end
