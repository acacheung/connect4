require 'pry'

class Board
  attr_accessor :board

  def initialize
    @board = board
    @board = []
    draw_board
    print_board
  end

  def draw_board
    for i in 1..10
      @board.push(Array.new)
    end
  end

  def print_board
    @board.each { |x| puts x.inspect}
  end
end

class Player
  attr_accessor :name

  def initialize
    @name = name
    get_name
  end

  def get_name
    while @name == ''
      puts 'What is your name?'
      @name = gets.chomp
    end
  end
end

game = Board.new
player_1 = Player.new
player_2 = Player.new

while player_1.name == player_2.name
  puts 'That name is already taken, please enter another name.'
  player_2.name = gets.chomp
end


# binding.pry
