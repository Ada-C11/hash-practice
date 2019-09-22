

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) where n is the size of the strings array
# Space Complexity: O(n) where n is the size of the strings array

def grouped_anagrams(strings)
  return strings if strings.length == 1 || strings.length == 0

  grouped_words_hash = {}
  strings.each do |word|
    check_word = word.chars.sort.join
    if grouped_words_hash[check_word].nil?
      grouped_words_hash[check_word] = [word]
    else
      grouped_words_hash[check_word].push(word)
    end
  end
  
  grouped_words_array = []
  grouped_words_hash.each do |sorted_word, array|
    grouped_words_array.push(array)
  end
  return grouped_words_array
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(nlogn) because of the sort_by algorithm
# Space Complexity: O(n) where n is the size of list
def top_k_frequent_elements(list, k)
  return list if list.length == 0

  track_common_elements = {}
  list.each do |element|
    if track_common_elements[element].nil?
      track_common_elements[element] = 1
    else
      track_common_elements[element] += 1
    end
  end


  common_elements_array = track_common_elements.sort_by {|num, occurence| -occurence}
  result = []
  i = 0
  common_elements_array.each do |one_num_array| 
    if i < k
      result.push(one_num_array[0])
    end
    i += 1
  end
  return result
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