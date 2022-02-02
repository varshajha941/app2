class DepartmentsController <ApplicationController
    def new
      @department=Department.new
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