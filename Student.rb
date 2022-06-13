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

