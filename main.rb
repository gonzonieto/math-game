require_relative 'Game'
require_relative 'Turn'
require_relative 'Question'
require_relative 'Player'

puts "Welcome to the game!"

names = []

print "Player 1, enter your name: "
names << gets.chomp

print "Player 2, enter your name: "
names << gets.chomp

Game.new(names).start