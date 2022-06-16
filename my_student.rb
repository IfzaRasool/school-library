require_relative './my_person'

class MyStudent < MyPerson
  attr_accessor :classroom
  def initialize(classroom)
    super()
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
