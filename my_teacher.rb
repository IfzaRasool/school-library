require_relative './my_person'

class MyTeacher < MyPerson
  def initialize(specialization)
    super()
    @specialization = specialization
  end
  # def get_specialization
  #   @specialization
  # end

  def can_use_services
    true
  end
end
