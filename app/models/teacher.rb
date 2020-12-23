class Teacher < ApplicationRecord
    has_secure_password
    has_many :sections
    has_many :students, through: :sections
    has_many :assignments, through: :sections
    has_many :grades, through: :students
    has_many :grades, through: :assignments
    # has_many :assignments
    # has_many :grades


    # accepts_nested_attributes_for :books, allow_destroy: true
    accepts_nested_attributes_for :sections, :students
    # accepts_nested_attributes_for :students
    # accepts_nested_attributes_for :assignments
    # accepts_nested_attributes_for :grades
end

