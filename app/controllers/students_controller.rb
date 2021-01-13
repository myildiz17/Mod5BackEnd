class StudentsController < ApplicationController
    def index 
        
        students = Student.all
        # students = Student.all.order("lastname ASC")
        render json: students
    end

    def show
        student = Student.find(params[:id])
        render json: student
    end
  
    def create
        student = Student.new(student_params)

        if student.valid?
            student.save
            render json: student
        else
            render json: student.errors.full_messages
            # render json: "Not accepted"
        end
        
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student
        # .update = .assign_attributes + .save
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy

        render json: "student deleted"
    end
    private

    def student_params
        params.require(:student).permit(:firstname, :lastname, :section_id)
    end

end
