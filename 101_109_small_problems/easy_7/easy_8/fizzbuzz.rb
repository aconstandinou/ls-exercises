def fizzbuzz(start, finish)
  start.upto(finish) do |num|
    if num % 3 == 0 && num % 5 != 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15)
