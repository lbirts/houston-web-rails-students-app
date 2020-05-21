class StudentsController < ApplicationController
    
    before_action :current_student, only: [:show, :destroy, :edit, :update]
    def index
        @students = Student.all
    end

    def show
    end

    def new 
        @student = Student.new
    end

    def create
        @student = Student.new(student_param)
        if @student.save
            redirect_to student_path(@student)
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to new_student_path
        end
    end

    def update
        if @student.update(student_param)
            redirect_to student_path(@student)
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to edit_post_path
        end 
    end
    
    def edit
    end

    def destroy
        @student.destroy
        redirect_to students_path
    end

    def current_student
        @student = Student.find(params[:id])
    end

    private
    def student_param
        params.require(:student).permit(:name, :major, :age, :instructor_id)
    end

end
