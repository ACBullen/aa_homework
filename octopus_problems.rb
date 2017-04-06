fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def sluggish_octopus_search(array)
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
