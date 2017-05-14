class Cat
  @@total_cats = 0

  attr_reader :name

  def initialize
    @@total_cats += 1
  end

  def self.total
    @@total_cats
  end

end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total
