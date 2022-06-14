class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MyPerson < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
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

class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end

class TrimmerDecorator < CapitalizeDecorator
  def correct_name
    @word_len = @nameable.correct_name.length
    @word_trim = @nameable.correct_name
    if @word_len <= 10
      puts @word_trim
    else
      (1..@word_len).each do |_i|
        next unless @word_len > 10

        @word_trim = @word_trim.chop
        @word_len = @word_trim.length
        puts @word_trim
      end
    end
  end
end

person = MyPerson.new(22, 'maximilian')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name
