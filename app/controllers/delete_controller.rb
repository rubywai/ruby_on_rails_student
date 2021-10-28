class DeleteController < ApplicationController
    def index
        id = params['id'];
        @student = Student.find(id)
    end
    def delete
        id = params['id'];
        @student = Student.find(id)
        if @student.delete
            redirect_to home_path, notice: "Delete successfully"

        else
            render :index
        end
    end
end