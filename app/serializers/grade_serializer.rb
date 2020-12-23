class GradeSerializer < ActiveModel::Serializer
  attributes :id, :score, :assignment_id, :student_id

  belongs_to :student
  belongs_to :assignment
end
