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
