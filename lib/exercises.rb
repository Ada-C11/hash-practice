

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n logn) where n is the length of the strings in the strings element
# Space Complexity: O(n) where n is the length of the input
def grouped_anagrams(strings)
  return [] if strings == []
  anagrams = {}

  strings.each_with_index do |string, i|
    sorted_string = string.split("").sort.join("").downcase
    if anagrams[sorted_string]
      anagrams[sorted_string] << string
    else
      anagrams[sorted_string] = [string]
    end
  end

  return anagrams.values
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n) where n is the length of list
# Space Complexity: O(n) where n is the length of the list
def top_k_frequent_elements(list, k)
  return [] if list == []

  frequency = {}
  list.each do |element|
    if frequency[element]
      frequency[element] += 1
    else
      frequency[element] = 1
    end
  end

  k_frequent_elements = []

  k.times do |i|
    max_freq = 0
    max_freq_element = nil
    frequency.each do |element, freq|
      if freq > max_freq
        max_freq = freq
        max_freq_element = element
      end
    end
    k_frequent_elements << max_freq_element
    frequency[max_freq_element] = 0 if max_freq_element
  end

  return k_frequent_elements
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  subgrids = {}

  # return false if any element is repeated in a row
  table.each do |row|
    row_count = {}
    row.each do |element|
      if row_count[element]
        return false unless element == "."
      else
        row_count[element] = 1
      end
    end
  end

  # return false if any element is repeated in a column
  columns = {
    0 => {},
    1 => {},
    2 => {},
    3 => {},
    4 => {},
    5 => {},
    6 => {},
    7 => {},
    8 => {},
  }
  table.each do |row|
    row.each_with_index do |element, index|
      if columns[index][element]
        return false unless element == "."
      else
        columns[index][element] = 1
      end
    end
  end

  first_subgrid = {}
  second_subgrid = {}
  third_subgrid = {}

  table[0..2].each do |row|
    row[0..2].each do |element|
      if first_subgrid[element]
        return false unless element == "."
      else
        first_subgrid[element] = 1
      end
    end

    row[3..5].each do |element|
      if second_subgrid[element]
        return false unless element == "."
      else
        second_subgrid[element] = 1
      end
    end

    row[6..8].each do |element|
      if third_subgrid[element]
        return false unless element == "."
      else
        third_subgrid[element] = 1
      end
    end
  end

  first_subgrid = {}
  second_subgrid = {}
  third_subgrid = {}

  table[3..5].each do |row|
    row[0..2].each do |element|
      if first_subgrid[element]
        return false unless element == "."
      else
        first_subgrid[element] = 1
      end
    end

    row[3..5].each do |element|
      if second_subgrid[element]
        return false unless element == "."
      else
        second_subgrid[element] = 1
      end
    end

    row[6..8].each do |element|
      if third_subgrid[element]
        return false unless element == "."
      else
        third_subgrid[element] = 1
      end
    end
  end

  first_subgrid = {}
  second_subgrid = {}
  third_subgrid = {}

  table[6..8].each do |row|
    row[0..2].each do |element|
      if first_subgrid[element]
        return false unless element == "."
      else
        first_subgrid[element] = 1
      end
    end

    row[3..5].each do |element|
      if second_subgrid[element]
        return false unless element == "."
      else
        second_subgrid[element] = 1
      end
    end

    row[6..8].each do |element|
      if third_subgrid[element]
        return false unless element == "."
      else
        third_subgrid[element] = 1
      end
    end
  end

  return true
end