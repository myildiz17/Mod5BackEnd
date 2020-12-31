class Assignment < ApplicationRecord
    belongs_to :section
    # belongs_to :teacher
    has_many :grades, dependent: :destroy
    has_many :students, through: :grades
end

