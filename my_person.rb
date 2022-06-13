class MyPerson
  def initialize(age, parent_permission: true, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # getter methods
  def get_id
    @id
  end

  def get_name
    @name
  end

  def get_age
    @age
  end

  # setter
  def set_name=(value)
    @name = value
  end

  def set_age=(value)
    @age = value
  end

  def is_of_age
    if @age >= 18
      true
    else
      false
    end
  end
  private :is_of_age
  def can_use_services
    if is_of_age and @parent_permission
      puts true
    end
  end
end
