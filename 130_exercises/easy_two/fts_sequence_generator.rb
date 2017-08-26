def step(start, stop, step_val)
  current_value = start
  loop do
    yield(current_value)
    break if current_value + step_val > stop
    current_value += step_val
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
