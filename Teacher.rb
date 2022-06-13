require_relative './Person'

class Teacher < Person
    def initialize(specialization="unknown")
        @specialization =specialization
    end    

    def can_use_services
        true
    end


end
