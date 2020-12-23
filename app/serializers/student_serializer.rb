class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :section_id

  belongs_to :section
  has_many :grades
  has_many :assignments, through: :grades
end
