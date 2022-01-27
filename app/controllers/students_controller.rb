class StudentsController < ApplicationController
     before_action :set_student , only:[:show,:edit,:update ,:destroy]
def show 
end
def index
@studs=Student.all
end
def new
     @student=Student.new
end
def edit
end
# def about
#     @student=Student.new(params.require(:student).permit(:name,:roll))
#     @student.save 
#     redirect_to @student
# end
def create
   @student=Student.new(student_params)
   if @student.save
      flash[:notice]="Successfully created"
      redirect_to @student
    else
    render 'new'
    end
end
def update
    if @student.update(student_params)
       flash[:notice]="Successfully Updated"
       redirect_to @student
     else
     render 'edit'
     end
end
def destroy
@student.destroy
redirect_to students_path
end
private

def set_student
     @student=Student.find(params[:id])
end
def student_params
     params.require(:student).permit(:name,:roll)
end
end