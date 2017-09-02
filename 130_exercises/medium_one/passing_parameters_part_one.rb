items = ['apples', 'corn', 'cabbage', 'wheat']

def gather
  yield
end

gather do
  puts "Let's start gathering food."
  puts "#{items.join(', ')}"
  puts "Let's start gathering food."
end

# LS Answer
def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Let's start gathering food."
end

gather(items) { |produce| puts produce.join(', ') }

# option 2 for user
gather(items) do |produce|
  puts "We've gathered some vegetables: #{produce[1]} and #{produce[2]}"
end
