class Person
  attr_accessor :secret

  def initialize
    @secret = ''
  end

  def to_s
    puts "#{secret}"
  end
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret
