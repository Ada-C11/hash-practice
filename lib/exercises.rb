# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) where n is the number of elements in the array
# Space Complexity: O(n)

def grouped_anagrams(strings)
  return [] if strings.length == 0
  
  hash = {}
  strings.each do |word|
    sorted_word = word.split("").sort
    if hash[sorted_word]
      hash[sorted_word] << word
    end
  end
  final_anagrams = []
    hash.each do |k, v|
      anagrams << v
    end
    return final_anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n)
# Space Complexity: O(n)

def top_k_frequent_elements(list, k)
  hash = {}
  
  list.each do |value|
    if hash[value]
      hash[value] += 1
    else
      hash[value] = 1
    end
  end
  
  top_elements = Array.new(k)
  return top_elements = hash.sort_by{ |key, value| value } 
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