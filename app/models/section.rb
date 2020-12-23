class Section < ApplicationRecord
    has_many :students
    belongs_to :teacher
    has_many :assignments
    has_many :grades, through: :assignments
    has_many :grades, through: :students
    # accepts_nested_attributes_for :students
    # accepts_nested_attributes_for :assignments
    # accepts_nested_attributes_for :assignments, allow_destroy: true
end
