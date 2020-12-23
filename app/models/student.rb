class Student < ApplicationRecord
    belongs_to :section
    has_many :grades
    has_many :assignments, through: :grades
end


