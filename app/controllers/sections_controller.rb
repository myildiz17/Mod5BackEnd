class SectionsController < ApplicationController

    def index 
        
        sections = Section.all
        render json: sections
    end

    def show
        section = Section.find(params[:id])
        render json: section
    end
  
    def create
        section = Section.new(section_params)

        if section.valid?
            section.save
            render json: section
        else
            render json: section.errors.full_messages
            # render json: "Not accepted"
        end
        
    end

    def update
        section = Section.find(params[:id])
        section.update(section_params)
        render json: section
        # .update = .assign_attributes + .save
    end

    def destroy
        section = Section.find(params[:id])
        section.destroy

        render json: "section deleted"
    end
    private

    def section_params
        params.require(:section).permit(:name, :teacher_id)
    end

end
