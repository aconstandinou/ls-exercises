# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc              # output nothing
puts my_proc.class        # output "class Proc"
my_proc.call              # output "This is a ." note: doesnt need an argument, returns nil
my_proc.call('cat')       # output "This is a cat." returns nil

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" } # lambda defines it as a lambda
my_second_lambda = -> (thing) { puts "This is a #{thing}" } # can define lambda with "->"
puts my_lambda            # Proc and returns nil
puts my_second_lambda     # Proc and returns nil
puts my_lambda.class      # Proc
my_lambda.call('dog')     # output "This is a dog." returns nil
my_lambda.call            # Requires an argument! Raised an ArgumentError
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # output "This is a ."
block_method_1('seal') # Error, no block given

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|           #output, "This is a turtle and a ."
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}
