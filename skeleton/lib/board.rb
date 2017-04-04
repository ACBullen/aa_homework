require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @current_player = @player1
    @cups =  Array.new(14){ [] }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup, idx|
      unless idx == 6 || idx == 13
        4.times do
          cup << :stone
        end

      end
    end
  end

  def valid_move?(start_pos)
    raise("Invalid starting cup") if start_pos < 0 || start_pos > 12 || start_pos == 6
  end

  def make_move(start_pos, current_player_name)
  #  debugger
    idx = start_pos
    until cups[start_pos].length == 0
      idx += 1
      idx == 0 if idx > 13
      if idx == 6
        idx = 7 unless @player1 == current_player_name
      end
      if idx == 13
        idx = 0 unless @player2 == current_player_name
      end
      cups[start_pos]= cups[start_pos][0...-1]
      cups[idx] << :stone
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx] == :stone
      :switch
    else
    ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    first_side_empty = false
    second_side_empty = false
    first_side_empty = true if cups[0..5].all? {|cup| cup.empty?}
    second_side_empty = true if cups[7..12].all? { |cup| cup.empty?}
    if first_side_empty || second_side_empty
      true
    else
      false
    end
  end

  def winner
    case cups[6] <=> cups[13]
    when -1

    when 0
      :draw
    when 1

    end
  end
end
