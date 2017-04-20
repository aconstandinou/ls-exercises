def thousand_lights()
  hash = Hash.new
  (1..1000).each do |val|
    hash[val] = 1
  end

  counter = 2
  loop do
    break if counter == 1001
    hash.each do |k, v|
      if k % counter == 0
        if v == 1
          hash[k] = 0
        else
          hash[k] = 1
        end
      end
    end
    counter += 1
  end

  new_hash = hash.select do |k, v|
    v == 1
  end
  new_hash.keys
end

thousand_lights

# LS Answer
def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == "on"  }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)
