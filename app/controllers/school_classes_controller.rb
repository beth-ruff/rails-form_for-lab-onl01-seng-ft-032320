class SchoolClassesController < ApplicationController
  
  def new 
    @school_class = SchoolClass.new
  end 
  
  def create 
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
  end 
  
  def show 
  end 
  
  def edit 
  end 
  
  def update 
  end
  
  private 
  
    def school_class_params(*args)
      params.require(:school_class).permit(:title, :room_number)
    end 
  
end 