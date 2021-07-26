require "set"
class GraphNode

  attr_accessor :val, :neighbors

  def initialize(value)
    self.val = value
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end

  def self.bfs(start, target)
    queue = [start]
    visited = Set.new()

    until queue.length == 0
      node = queue.shift
      if !visited.include?(node)
        return node.val if node.val == target
        visited.add(node)
        queue += node.neighbors
      end
    end
    return nil
  end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a, "b")
p GraphNode.bfs(a, "f")