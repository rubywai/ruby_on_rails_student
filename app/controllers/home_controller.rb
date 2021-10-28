class HomeController < ApplicationController
    def index
        @students = Student.new
    end
    def show
        @student = Student.find(params['id'])
    end
    def deleteall
        @students = Student.all
        if @students.delete_all
            redirect_to home_path
        else
            render :index
        end
    end

end