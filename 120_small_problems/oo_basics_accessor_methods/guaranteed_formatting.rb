class Person
  attr_reader :name

  def name=(name_input)
    @name = name_input.capitalize!
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name
