class Section < ApplicationRecord
    has_many :students
    belongs_to :teacher
    has_many :assignments
    has_many :grades, through: :assignments
    has_many :grades, through: :students
    
end
