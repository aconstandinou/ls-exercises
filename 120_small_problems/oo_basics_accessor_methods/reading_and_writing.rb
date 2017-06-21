class Person
  attr_reader :name

  def name=(name)
    @name = name
  end

  def to_s
    @name
  end
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name
