class StudentsTeacher < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
end

# has_and_belongs_to_many example