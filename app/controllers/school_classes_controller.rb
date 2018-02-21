class SchoolClassesController < ApplicationController
  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params(:title, :room_number))
  end

  def edit
  end

  def update
  end

end
