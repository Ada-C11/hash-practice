

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: Would this by O(nlog n) for sorting of the string?
# Space Complexity: O(n + m), n is the size of the array and m is the size of the hash

def grouped_anagrams(strings)
  if strings == []
    return []
  end

  word_hash = {}

  strings.each do |word|
    sorted_word = word.chars.sort.join
    if word_hash[sorted_word]
      word_hash[sorted_word] << word
    else
      word_hash[sorted_word] = [word]
    end
  end

  return word_hash.values
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
