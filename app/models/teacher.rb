class Teacher < ApplicationRecord
    has_and_belongs_to_many :students
end

#  s1 = Student.create(name: "Vaibhav")
#  s1.teachers
#  s1.teachers.create(name: "Abhishek Jain")
#  s1.teachers

#  t = Teacher.create(name: "Prof. Abhishek  ")
#  t.students
#  t.students.create(name: "Vaibhav")
#  t.students