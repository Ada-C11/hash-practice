

# This method will return an top_frequent_nums of top_frequent_numss.
# Each subtop_frequent_nums will have strings which are anagrams of each other
# Time Complexity: O(m * n log n) - where m is the length of the list, and n is the average length of a word in the list
# Space Complexity: O(n) - where n is the length of the list

def grouped_anagrams(strings)
  result = []
  return result if strings.empty?

  anagrams = {}
  strings.each do |string|
    sorted_string = string.split("").sort.join("")
    anagrams[sorted_string] ? anagrams[sorted_string] << string : anagrams[sorted_string] = [string]
  end

  anagrams.each_value { |value| result << value }

  return result
end

# This method will return the k most common nums
# in the case of a tie it will select the first occuring num.
# Time Complexity: O(m * n) - where m is the value of k, and n is the length of the list
# Space Complexity: O(n) - where n is the length of the list
def top_k_frequent_elements(list, k)
  return list if list.empty?

  num_frequency = {}

  list.each do |num|
    num_frequency[num] ? num_frequency[num] += 1 : num_frequency[num] = 1
  end

  top_frequent_nums = []

  k.times do
    max_frequency = 0
    max_frequent_num = nil

    num_frequency.each do |key, value|
      if value > max_frequency
        max_frequency = value
        max_frequent_num = key
      end
    end

    top_frequent_nums << max_frequent_num
    num_frequency[max_frequent_num] = 0
  end

  return top_frequent_nums
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each num can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
