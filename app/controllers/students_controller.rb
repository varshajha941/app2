class StudentsController < ApplicationController
def show 
@students=Student.all
end
def about
@student=Student.find(params[:id])
end
def index
@studs=Student.all
end
end