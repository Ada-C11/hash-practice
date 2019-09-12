

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: ?
# Space Complexity: ?

def grouped_anagrams(strings)
  # raise NotImplementedError, "Method hasn't been implemented yet!"
  return [] if strings.length == 0

  grouped_anagrams = []
  hash = {}
  i = 0

  while i <= strings.length - 1
    sorted_word = strings[i].split("").sort.join

    if !hash.key?(sorted_word)
      hash[sorted_word] = [strings[i]]
    else
      hash[sorted_word] << strings[i]
    end

    i += 1
  end

  hash.each_value do |words|
    grouped_anagrams << words.sort
  end

  return grouped_anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
