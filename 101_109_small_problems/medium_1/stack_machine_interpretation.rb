def n(n, register)
  register = n
end

def push(stack, register)
  stack.push(register)
end

# REGISTER MUST EQUAL THIS METHOD
def add(stack, register)
  value = stack.pop
  register = register + value
end

# REGISTER MUST EQUAL THIS METHOD
def subtr(stack, register)
  value = stack.pop
  register = register - value
end

# REGISTER MUST EQUAL THIS METHOD
def mult(stack, register)
  value = stack.pop
  register = register * value
end

# REGISTER MUST EQUAL THIS METHOD
def div(stack, register)
  value = stack.pop
  register = register / value
end

# REGISTER MUST EQUAL THIS METHOD
def mod(stack, register)
  value = stack.pop
  register = register % value
end

# REGISTER MUST EQUAL THIS METHOD
def pop(stack, register)
  value = stack.pop
  register = value
end

def printing_time(register)
  puts "#{register}"
end

def minilang(string)
  array = string.split(' ')
  register = 0
  stack = []
  stored_num = 0
  array.each do |inxs|
    if inxs !~ /\D/
      register = inxs.to_i
    elsif inxs == "PUSH"
      push(stack, register)
    elsif inxs == "POP"
      register = pop(stack, register)
    elsif inxs == "ADD"
      register = add(stack, register)
    elsif inxs == "SUB"
      register = subtr(stack, register)
    elsif inxs == "MULT"
      register = mult(stack, register)
    elsif inxs == "DIV"
      register = div(stack, register)
    elsif inxs == "MOD"
      register = mod(stack, register)
    else
      printing_time(register)
    end
  end
end
