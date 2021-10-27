class RegisterController  < ApplicationController
    def index
       @student = Student.new
    end
    def new
        @student = Student.new(student_parms)
        if @student.save
            redirect_to home_path, notice: "Sign up successfully"

        else
            render :index
        end

    end
    private
    def student_parms
        params.require(:student).permit(:email, :password , :password_confirmation)
    end
end