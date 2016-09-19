
require_relative "piece"

class Board

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) {[]}}
    populate
  end

  def populate
    board.each do |row|
      row.each do |square|
        square << Piece.new
      end
    end
  end

  def move(start, end_pos)
    if start.nil?
      raise "Please enter a valid starting value."
    end

    #TODO: Raise error if end_pos is invalid 
    start_piece = board[start]
    end_position = board[end_pos]

    start_piece, end_position = end_position, start_piece

  end


  def [](pos)
    x, y = pos
    board[x][y]
  end

  def []=(pos, value)
    x, y = pos
    board[x][y] = value
  end

end
