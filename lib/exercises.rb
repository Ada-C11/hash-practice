

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) it must go through the entire list
# Space Complexity: O(n) we return an array of size n same as the input array

def grouped_anagrams(strings)
  string_hash = {}

  return [] if strings.empty?

  # loop through array, 
  strings.each do |word|
    sorted_word = word.chars.sort.join
    if string_hash[sorted_word]
      string_hash[sorted_word].push(word)
    else
      string_hash[sorted_word] = [word]
    end
  end

    final_result = []
    string_hash.each do |key, value|
      final_result.push(value)
    end

    return final_result
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  element_counts = {}
  count = 0

  return list if list.empty?

  list.each do |num|
    if element_counts[num]
      element_counts[num] += 1
    else
      element_counts[num] = 1
    end

  end

  sorted_hash_array = element_counts.sort_by{ |key, val| -val}

  puts sorted_hash_array.to_s
  return_array = []
  k.times do |i|
  return_array.push(sorted_hash_array[i][0])
  i += 1
  end

  return return_array

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