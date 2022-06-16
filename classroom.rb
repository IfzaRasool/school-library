class ClassRoom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  # Instead of setter for entire collection a method to add animals one by one
  def add_students(students)
    @students.push(students)
    student.classroom = self
  end
end
