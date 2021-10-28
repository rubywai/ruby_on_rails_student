class EditController < ApplicationController
        def index
            id = params['id'];
            @student = Student.find(id)
        end
        
     def update
            id = params.require(:student).permit(:id)
            @student = Student.find(id['id'])
            if @student.update(student_parms)
                redirect_to home_path, notice: "Update successfully"
    
            else
                render :index
            end
    
        end
        private
        def student_parms
            params.require(:student).permit(:email, :password , :name , :address , :phone)
        end
end