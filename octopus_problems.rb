fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def clever_octopus_search(array)
  longest = array[0]
  i = 0
  while i < array.length
    if array[i].length > longest.length
      longest = array[i]
    end

    i += 1
  end

  longest
end

def dominant_octopus_search(array)
  sorted = false
  until sorted
    sorted = true
    array.each_index do |i|
      next if i + 1 >= array.length
      j = i + 1
      if array[j].length < array[i].length
        sorted = false
        array[j], array[i] = array[i], array[j]
      end
    end
  end
  array.last
end

def sluggish_octopus_search(array)
  array.each_with_index do |fish, idx|
    max_length = true
    array.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish.length
    end
    return fish if max_length
  end
end
class Array
  def merge_sort(&prc)
    return self if array.length <= 1
    prc ||= Proc.new { |x, y| x <=> y }
    sorted_left = self[0...mid].merge_sort(&prc)
    sorted_right = self[mid..-1].merge_sort(&prc)

    Array.merge(sorted_left, sorted_right)
  end
  private
  def self.merge(left, right, &prc)
    sorted = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        sorted << left.shift
      when 0
        sorted << left.shift
      when 1
        sorted << right.shift
      end
    end
    sorted.concat(left)
    sorted.concat(right)

    sorted
  end
end

def actual_dominant_octopus(array)
  sorted = array.merge_sort

  sorted.last
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
def slow_dance(direction, array)
  array.each_with_index do |el, idx|
    return idx if el == direction
  end
end
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6, "left-up", 7}

def continuous_dance(direction, new_tiles_data_structure)
  new_tiles_data_structure[direction]
end
