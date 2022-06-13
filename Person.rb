class Person
    def initialize(name ="unknown",age, parent_permission:true)
        @id =Random.rand(1..1000)
        @name =name
        @age =age
        @parent_permission =parent_permission
    end
 # getter methods
    def getId
        @id
    end
    def getName
        @name
    end
    def getAge
        @age
    end
#setter
    def setName=(value)
        @name = value
    end
    def setAge=(value)
        @age = value
    end
    def is_of_age
        if @age >=18
            true;
        else
          false;
        end
    end
    private :is_of_age
    def can_use_services
                if is_of_age() and @parent_permission
                    puts true;
                end
    end

end
# person_1=Person.new("Bob", 19)
# # puts "name and age: #{person_1}"

# # use setter methods
# # person_1.setName="Ifza"
# # person_1.setAge=29
# #getter

# x = person_1.getName()
# y = person_1.getAge()

# puts "Name is : #{x}"
# puts "Age is : #{y}"

# person_1.can_use_services;
# # call instance methods
# # a = person_1.can_use_services()
# # puts " Can Use services : #{a}"

