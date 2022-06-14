class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MyPerson < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end
  # private :of_age
  def can_use_services?
    @parent_permission || of_age?
  end

  def correct_name
    @name
  end
end

class CapitalizeDecorator < Nameable
  attr_accessor :nameable


  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.upcase()
  end
end

class TrimmerDecorator < CapitalizeDecorator
  
    def correct_name
     @wordLen = @nameable.correct_name.length()
     @wordTrim = @nameable.correct_name
     if @wordLen <= 10
        puts @wordTrim
       else 
        for a in 1..@wordLen do
          if @wordLen >10
           @wordTrim = @wordTrim.chop()
           @wordLen = @wordTrim.length()
           puts @wordTrim
          end   
        end
      end
    end
end

person = MyPerson.new(22, 'maximilian')
  person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
  capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  capitalizedTrimmedPerson.correct_name