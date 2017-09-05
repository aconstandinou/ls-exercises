# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# note: Procs return from the method so line 4 returns nil
# LS: If we return from within a Proc, and that Proc is defined within a method.
#     Then, we will immediately exit that method(we return from the method).

# Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)
# note: Procs don't return from proc itself
# LS: If we return from within a Proc and that Proc is defined outside of a
#     method. Then, an error will be thrown when we call that Proc. This occurs
#     because program execution jumps to where the Proc was defined when we call
#     that Proc. We cannot return from the top level of the program.

# Group 3
def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda
# note: Lambdas don't return from inside method. Hence why line 26 is output to screen
# LS: If we return from within a Lambda, and that Lambda is defined within a
#     method, then program execution jumps to where the Lambda code is defined.
#     After that, code execution then proceeds to the next line of the method
#     after the #call to that lambda.


# Group 4
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)
#note: stumped on this one
# LS: If we return from within a Lambda and that Lambda is defined outside a
#     method, then program execution continues to the next line after the call
#     to that Lambda. This is the same effect as the code in group 3.


# Group 5
def block_method_3
  yield
end

block_method_3 { return }

# note: Raised an error, therefore blocks dont return from itself
# LS: If we return from an implicit block that is yielded to a method, then an
#     error will be thrown. The reason for this error is the same as the one
#     mentioned for group 2. We are trying to return from some code in our
#     program that isn't in a method.


# CONCLUSION
#Procs and implicit blocks sometimes have the same behavior when we return from
#them. If a Proc is defined outside a method, and we return from it, then we'll
#get an error. The same thing occurs if we try to return from an implicit block,
#where the block itself isn't defined in a method. An error is thrown if we try
#to return from it.

#If we try to return from within a Proc that is defined within a method, then we
#immediately exit the method.

#If we try to return from a Lambda, the same outcome occurs, regardless of
#whether the Lambda is defined outside a method or inside of it. Eventually,
#program execution will proceed to the next line after the #call to that lambda.
