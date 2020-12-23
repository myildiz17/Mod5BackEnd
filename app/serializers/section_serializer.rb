class SectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :teacher_id

  has_many :students
  belongs_to :teacher
  has_many :assignments
  has_many :grades, through: :assignments
  has_many :grades, through: :students

  def students
    object.students.collect do |student|
      { :grades => student.grades }
    end
  end

end
