class Assignment < ApplicationRecord
    belongs_to :section
    
    has_many :grades, dependent: :destroy
    has_many :students, through: :grades
end

