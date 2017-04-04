class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups =  Array.new(14){ [] }

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
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
