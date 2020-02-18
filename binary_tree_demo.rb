# frozen_string_literal: true

require 'grid'
require 'binary_tree'
puts 'BinaryTree'
grid = Grid.new(4, 4)
BinaryTree.on(grid)
puts grid
img = grid.to_png
img.save 'maze.png'
img = grid.to_svg
img.save 'maze.svg'

puts

puts 'BinaryTreeSouthWest'
grid = Grid.new(4, 4)
BinaryTreeSouthWest.on(grid)
puts grid

puts

puts 'BinaryTreeHorizontal'
grid = Grid.new(4, 4)
BinaryTreeHorizontal.on(grid)
puts grid