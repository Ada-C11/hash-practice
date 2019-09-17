

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
# Time Complexity: O(nlog n) because of the sorted array is at least
# Space Complexity: O(n), which ever takes up more space, the freq_hash (likely this one) or the sorted frequencies
def top_k_frequent_elements(list, k)
  if list == [] || k == 0
    return []
  end

  freq_hash = {}
  unique_values = []
  max_freq = 0
  list.each do |num|
    if freq_hash.include?(num)
      freq_hash[num] += 1
    else
      freq_hash[num] = 1
      unique_values << num
    end
  end

  sorted_frequencies = freq_hash.values.sort

  answer_arr = []
  k.times do
    unique_values.each do |num|
      if freq_hash[num] == sorted_frequencies[-1]
        answer_arr << num
        sorted_frequencies.pop
        freq_hash.delete(num)
        break
      end
    end
  end

  return answer_arr
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
