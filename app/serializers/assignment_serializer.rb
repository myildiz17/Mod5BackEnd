class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :section_id

  belongs_to :section
  # belongs_to :teacher
  has_many :grades, dependent: :destroy
  # has_many :students, through: :grades

  def grades
    object.grades.collect do |grade|
      { :grade => grade, :student => grade.student }
    end
  end

end
