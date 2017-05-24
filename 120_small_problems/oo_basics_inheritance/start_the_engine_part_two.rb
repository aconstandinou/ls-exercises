class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')

=begin
#super invokes the method in the inheritance hierarchy with the
same name as the method in the child. Therefore, #start_engine in Vehicle will
be invoked if we call #super within #start_engine in Truck. The tricky part here
is that #start_engine in Vehicle doesn't accept any arguments. If we passed
speed as an argument, we would get an error. To remedy this, we can invoke
#super with empty parentheses, which means no arguments will be passed.
=end
