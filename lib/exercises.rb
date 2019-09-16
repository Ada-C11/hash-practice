

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(m*n log n), where m is each of the items on strings and n is the amount of characters on each string
# Space Complexity: O(m*n),  where m is each of the items on strings and n is the amount of characters on each string

def grouped_anagrams(strings)
  
  groups = {}

  strings.each_with_index do |word, index|
    key = word.chars.sort

    if groups[key]
      groups[key] << word
    else 
      groups[key] = [word]
    end
  end

  return groups.values

end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)

  if list.empty?
    return []
  end

  list_count = {}

  list.each_with_index do |item, index|
    if list_count[item]
      list_count[item] +=1
    else 
      list_count[item] = 1
    end
  end
  
  values = list_count.values
  keys = list_count.keys
  max_value = 0
  count_repeated = 0

  max_value = values.first
  values.each do |value|
    if value == max_value
      count_repeated += 1
      if count_repeated == list_count.length
        keys.sort
        return keys.first(k)
      end
    end
  end

  index_values = values.map.with_index.sort.map(&:last)
  k_indexes = index_values.last(k)
  k_values = []

  k_indexes.each do |index_to_print|
    k_values.push(keys[index_to_print])
  end

  return  k_values
  
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