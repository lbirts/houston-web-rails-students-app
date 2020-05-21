class InstructorsController < ApplicationController

    before_action :current_instructor, only: [:show, :destroy, :edit, :update]
    def index
        @instructors = Instructor.all
    end

    def show
    end

    def new 
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructor_param)
        if @instructor.save
            redirect_to instructor_path(@instructor)
        else
            flash[:errors] = @instructor.errors.full_messages
            redirect_to new_post_path
        end
    end

    def update
        if @instructor.update(instructor_param)
            redirect_to instructor_path(@instructor)
        else
            flash[:errors] = @instructor.errors.full_messages
            redirect_to edit_post_path
        end 
    end
    
    def edit
    end

    def destroy
        @instructor.destroy
        redirect_to instructors_path
    end

    def current_instructor
        @instructor = Instructor.find(params[:id])
    end

    private
    def instructor_param
        params.require(:instructor).permit(:name)
    end
end
