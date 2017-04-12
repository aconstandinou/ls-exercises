file_name = "C:/Users/antonio_zeus/launch_school_practice/exercises/
             101_109_small_problems/medium_2/longest_sentence.txt"

file_to_read = File.read(file_name)
#split on multiple delimiters
x = file_to_read.split(/[.!?]/)

# to collect each word split by space from each sentence that we split above
# we create an array of arrays
array = []

y = x.map do |sentence|
  sentence.split(' ')
end

# for each sentence array, count its length and collect the result in
# y_collector array
y_collector = []
y.each do |inner_array|
  y_collector << inner_array.size
end

# find the max value in our y_collector
puts "There are #{y_collector.max} words in the longest sentence"
