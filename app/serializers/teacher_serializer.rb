class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :name, :subject, :username, :password

  
  # has_many :sections
  has_many :sections
  # has_many :students, through: :sections
  # has_many :assignments, through: :sections
  # has_many :grades, through: :students
  # has_many :grades, through: :assignments
  # accepts_nested_attributes_for :sections

  def sections
    object.sections.collect do |section|
     { :section => section, :students => section.students, :assignments => section.assignments }
    end
  end

end
