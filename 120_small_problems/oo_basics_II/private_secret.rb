class Person
  attr_writer :secret

  private

  attr_reader :secret

  public

  def share_secret
    puts "#{secret}"
  end

end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret
