

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * mlogm)
# n for .each do, mlogm for sort
# Space Complexity: O(n)


def grouped_anagrams(strings)
  output = []
  anagram = {}

  strings.each do |word|
    key = word.split("").sort
    if anagram.has_key?(key) == true
      anagram[key].push(word)
    else
      anagram[key] = [word]
    end
  end

  anagram.each_key do |key|
    output.push(anagram[key])
  end

  return output
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