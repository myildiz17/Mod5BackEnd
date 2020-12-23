class TeachersController < ApplicationController
   
    def index 
        
        teachers = Teacher.all
        render json: teachers
    end

    def show
        teacher = Teacher.find(params[:id])
        render json: teacher
    end
  
    def create
        teacher = Teacher.new(teacher_params)

        if teacher.valid?
            teacher.save
            render json: teacher
        else
            render json: teacher.errors.full_messages
            # render json: "Not accepted"
        end
        
    end

    def update
        teacher = Teacher.find(params[:id])
        teacher.update(teacher_params)
        render json: teacher
        # .update = .assign_attributes + .save
    end

    def destroy
        teacher = Teacher.find(params[:id])
        teacher.destroy

        render json: "teacher deleted"
    end
    private

    def teacher_params
        params.require(:teacher).permit(:name, :subject, :username, :password)
    end



end
