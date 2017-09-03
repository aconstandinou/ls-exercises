items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# V1

gather(items) do | *produce, wheat|
  puts produce.join(', ')
  puts wheat
end

# V2

gather(items) do | apples, *rest, wheat|
  puts apples
  puts rest.join(', ')
  puts wheat
end

## V3

gather(items) do | apples, *rest|
  puts apples
  puts rest.join(', ')
end

## V4
#
gather(items) do | apples, corns, cabbage, wheat|
  puts "#{apples}, #{corns}, #{cabbage} and #{wheat}"
end
