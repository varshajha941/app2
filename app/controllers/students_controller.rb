class StudentsController < ApplicationController
def show 
@student=Student.find(params[:id])
end
def index
@studs=Student.all
end
def new
     @student=Student.new
end
# def about
#     @student=Student.new(params.require(:student).permit(:name,:roll))
#     @student.save 
#     redirect_to @student
# end
def create
   @student=Student.new(params.require(:student).permit(:name,:roll))
   if @student.save
      flash[:notice]="Successfully created"
      redirect_to @student
    else
    render 'new'
    
    end
end
end