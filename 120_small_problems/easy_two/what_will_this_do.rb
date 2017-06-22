class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata  # => 'Byebye' since this is a class method
puts thing.dupdata      # => 'HelloHello' since this is an instance method

# LS How to Answer the question (long)

# Our code first creates a Something object, and then prints the result of
# Something.dupdata, and then thing.dupdata. The former invocation calls the
# class method (self.dupdata), and so prints "ByeBye". The latter invocation
# calls the instance method, and so prints "HelloHello".
