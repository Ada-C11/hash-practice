# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n)
# Space Complexity: O(n)

def grouped_anagrams(strings)
  if strings.length == 0
    return []
  end
  word_hash = {}
  strings.each do |word|
    sorted_word = word.split("").sort().join()
    if word_hash[sorted_word].nil?
      word_hash[sorted_word] = []
    end
    word_hash[sorted_word] << word
  end

  anagrams = []
  word_hash.keys.each do |key|
    anagrams << word_hash[key]
  end

  return anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n)
# Space Complexity: O(n)
def top_k_frequent_elements(list, k)
  if list.length == 0
    return []
  end

  count_hash = {}

  list.each do |char|
    count_hash[char] ? count_hash[char] += 1 : count_hash[char] = 1
  end

  char_count = {}
  count_hash.keys.each do |key|
    char_count[count_hash[key]] ||= []
    char_count[count_hash[key]] << key
  end

  num_remain = k
  max = char_count.keys.max
  most_frequent = []

  while num_remain > 0 && max > 0
    if char_count[max]
      char_count[max].each do |num|
        most_frequent << num
        num_remain -= 1
        break if num_remain == 0
      end
    end
    max -= 1
  end
  return most_frequent
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?

def valid_sub_section?(section)
end

def valid_sudoku(table)
  valid_sudoku = {
    1 => 1,
    2 => 1,
    3 => 1,
    4 => 1,
    5 => 1,
    6 => 1,
    7 => 1,
    8 => 1,
    9 => 1,
  }

  row_values = col_values = valid_sudoku
end
