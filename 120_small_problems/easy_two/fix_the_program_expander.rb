class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# We need to remove self.expand to just expand. But why?
# Private methods: only accessible from other class methods when called
#                 without self
