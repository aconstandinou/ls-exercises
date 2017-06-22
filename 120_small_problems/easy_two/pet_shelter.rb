require 'pry'

class Pet
  def initialize(pet_type, pet_name)
    @type = pet_type
    @name = pet_name
  end
end

class Owner
  attr_accessor :name, :number_of_pets

  def initialize(owner_name)
    @name = owner_name
    @number_of_pets = 0
  end

  def number_of_pets
    @number_of_pets
  end
end

class Shelter
  attr_accessor :adoptions

  def initialize
    @adoptions = []
  end

  def adopt(owner_object, pet_object)
    owner_object.number_of_pets += 1
    @adoptions << {owner_object.name => pet_object}
  end

  def print_adoptions
    binding.pry
    x = @adoptions.group_by{|h| h[:user]}.values
    #@adoptions.join(' ')
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
