

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * mlogm) where n is the length of the strings array and m is the length of each word
#                   since each word is getting sorted
# Space Complexity: O(n) where n is the size of the strings array - worst case there are no anagrams and the
#                    hash is the same size as the array

def grouped_anagrams(strings)
  return [] if strings.length == 0

  hash = {}

  strings.each do |word|
    sorted_word = word.chars.sort.join

    if !hash[sorted_word]
      hash[sorted_word] = [word]
    else
      hash[sorted_word] << word
    end
  end

  return hash.values
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n * k) where n is the length of the list 
# Space Complexity: O(n) where n is the length of the lists
def top_k_frequent_elements(list, k)
  return [] if list.length == 0

  hash = {}
  list.each do |ele|
    if !hash[ele]
      hash[ele] = 1
    else
      hash[ele] += 1
    end
  end

  top_occurring = []

  k.times do |i|
    top_val = nil
    top_freq = 0

    hash.each do |ele, freq|
      if freq > top_freq
        top_freq = freq
        top_val = ele
      end
    end

    hash.delete(top_val)
    top_occurring.push(top_val)
  end

  return top_occurring
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
