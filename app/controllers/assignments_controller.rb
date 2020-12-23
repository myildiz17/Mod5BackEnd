class AssignmentsController < ApplicationController
    def index 
        
        assignments = Assignment.all
        render json: assignments
    end

    def show
        assignment = Assignment.find(params[:id])
        render json: assignment
    end
  
    def create
        assignment = Assignment.new(assignment_params)
       
        if assignment.valid?
            assignment.save
            section = assignment.section
            section.students.each do |student| 
                Grade.create(score: 0, assignment_id: assignment.id, student_id: student.id)
            end
            render json: assignment

        else
            render json: assignment.errors.full_messages
            # render json: "Not accepted"
        end
        
    end

    def update
        assignment = Assignment.find(params[:id])
        assignment.update(assignment_params)
        render json: assignment
        # .update = .assign_attributes + .save
    end

    def destroy
        assignment = Assignment.find(params[:id])
        assignment.destroy

        render json: "assignment deleted"
    end
    private

    def assignment_params
        params.require(:assignment).permit(:name, :section_id)
    end

end
