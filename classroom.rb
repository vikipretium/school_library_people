require_relative './student'

# Classroom Class
class Classroom
  attr_reader :student
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  # Instead of setter for entire collection a method to add students one by one
  def add_student(student)
    @student.push(student)
    student.classroom = self
  end
end
