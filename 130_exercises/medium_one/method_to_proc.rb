
def convert_to_base_8(n)
  n.to_s(8).to_i # replace these two method calls
end

# The correct type of argument must be used below
base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
returned_val = [8,10,12,14,16,33].map(&base8_proc) #needs to be a proc object
p returned_val
# expected values: [10, 12, 14, 16, 20, 41]


# One last piece of information that may be good to mention is how a method
# looks when converted to a Proc. You can imagine the conversion to look like that:

def convert_to_base_8(n)
  n.to_s(8).to_i
end

# ->

Proc.new { |n| n.to_s(8).to_i }
#when we use & to convert our Proc to a block, it expands out to...

# ->
[8,10,12,14,16,33].map { |n| n.to_s(8).to_i }
