

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n), where n is the number of words in strings, for the each loop
# I'm not sure what the time complexity is for string.chars.sort.join, but I would guess 
# O(m), where m is the number of letters in strings 
# if I am correct, that would be O(m*n) total
# If the words are as short as they are in the tests, we can assume that m is minimal enough
# for it to be nearly constant, resulting in a O(n) total.

# Space Complexity: O(n), where n is the number of words in strings

def grouped_anagrams(strings)
  return [] if strings.length == 0

  result = []
  hash = {}
  count = 0

  strings.each do |string|
    sorted_string = string.chars.sort.join

    if hash[sorted_string] 
      result[hash[sorted_string]].push(string)
    else
      hash[sorted_string] = count
      result.push([string])
      count += 1
    end
  end

  return result
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