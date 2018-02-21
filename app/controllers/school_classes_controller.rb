class SchoolClassesController < ApplicationController
  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params)
  end

  def edit
  end

  def update
  end

end
