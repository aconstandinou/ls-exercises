class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    #@name.upcase!
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# line 16 output will be 'Fluffy'
# line 17 output will be name upcase, since its destructive
# same applies for line 18 and 19

# @name and name reference the same object in memory

name = 42
fluffy = Pet.new(name)
name += 1 # this re-assigns name
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
