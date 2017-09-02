array = %w(raven finch hawk eagle)

def gather(array)
  yield(array)
end

gather(array) { |animals| raptors = animals[2..-1] }
gather(array) { |animals| puts animals }

# LS Answer
birds = ['crow', 'finch', 'hawk', 'eagle', 'osprey']

def types(birds)
  yield birds
end

types(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')}."
end
