class Teacher < ApplicationRecord
    has_secure_password
    has_many :sections
    has_many :students, through: :sections
    has_many :assignments, through: :sections
    has_many :grades, through: :students
    has_many :grades, through: :assignments
   
    accepts_nested_attributes_for :sections, :students
    
end

