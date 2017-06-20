class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

# It's still Cat then Animal but will return an error since we will reach
# the end of our lookup path and find no method color
