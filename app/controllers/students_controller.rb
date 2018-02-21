class StudentsController < ApplicationController
  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(class_params(:title, :room_number))
    redirect_to student_path
  end

  def edit
  end

  def update
  end

  private

	def class_params(*args)
	  params.require(:student).permit(*args)
	end
end
