require_relative './Person'

class Student < Person
    def initialize(classroom="unknown")
        @classroom=classroom
    end    

    def getClass
        @classroom
    end

    def play_hooky
        puts "¯\(ツ)/¯"
    end
end

person_1=Person.new("Bob", 19)
x = person_1.getName()
 y = person_1.getAge()

 puts "Name is : #{x}"
puts "Age is : #{y}"

student =Student.new(3)
z= student.getClass()
puts "classroom is : #{z}"