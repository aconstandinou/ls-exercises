# modify class Tree to support enumerable

class Tree
  include Enumerable

  def each
    Enumerable.public_instance_methods
  end
end

tree = Tree.new
tree.each
