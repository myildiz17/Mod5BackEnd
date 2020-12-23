class GradesController < ApplicationController
    def index 
        
        grades = Grade.all
        render json: grades
    end

    def show
        grade = Grade.find(params[:id])
        render json: grade
    end
  
    def create
        grade = Grade.new(grade_params)

        if grade.valid?
            grade.save
            render json: grade
        else
            render json: grade.errors.full_messages
            # render json: "Not accepted"
        end
        
    end

    def update
        grade = Grade.find(params[:id])
        grade.update(grade_params)
        render json: grade
        # .update = .assign_attributes + .save
    end

    def destroy
        grade = Grade.find(params[:id])
        grade.destroy

        render json: {message: "grade deleted" } 
    end
    private

    def grade_params
        params.require(:grade).permit(:score, :assignment_id, :student_id)
    end

end
