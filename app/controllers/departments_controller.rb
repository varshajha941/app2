class DepartmentsController <ApplicationController
    def show
      @department=Department.find(params[:id])
      @studs=@department.students
    end
    def new
      @department=Department.new
    end
    def edit
      @department=Department.find(params[:id])
    end
    def update
      @department=Department.find(params[:id])
       if @department.update(params.require(:department).permit(:dept,:mail,:password))
        flash[:notice]="Successfully Updated"
        redirect_to @department
       else 
        render 'edit'
       end
    
    end
    def create
      @department=Department.new(params.require(:department).permit(:dept,:mail,:password))
      if @department.save
         flash[:notice]="Successfully created"
       else
       render 'new'
       end
   end
end