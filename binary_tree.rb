# frozen_string_literal: true

class BinaryTree
  def self.on(grid)
    grid.each_cell do |cell|
      neighbors = []
      neighbors << cell.north if cell.north
      neighbors << cell.east if cell.east

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end
    grid
  end
end

class BinaryTreeSouthWest
  def self.on(grid)
    grid.each_cell do |cell|
      neighbors = []
      neighbors << cell.south if cell.south
      neighbors << cell.west if cell.west

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end
    grid
  end
end

class BinaryTreeHorizontal
  def self.on(grid)
    grid.each_cell do |cell|
      neighbors = []
      neighbors << cell.north if cell.north
      neighbors << cell.east if cell.east
      neighbors << cell.east if cell.east # make it twice as likely to go east

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end
    grid
  end
end