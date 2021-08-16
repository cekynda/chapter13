# frozen_string_literal: true

class Chess
  def king_turn
    puts 'ход короля'
  end

  def queen_turn
    puts 'ход королевы'
  end

  def bish_turn
    puts 'ходит офицер'
  end

  def knight_turn
    puts 'ходит конь'
  end

  def rook_turn
    puts 'ходит ладья'
  end

  def pown_turn
    puts 'ходит пешка'
  end

  def delete_from_board
    puts 'удаляем фигуру с доски'
  end
end
