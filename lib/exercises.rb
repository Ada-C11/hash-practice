

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * mlogm)
# n for .each do, mlogm for sort
# Space Complexity: O(n)


def grouped_anagrams(strings)
  output = []
  anagram = {}

  strings.each do |word|
    key = word.split("").sort
    if anagram.has_key?(key) == true
      anagram[key].push(word)
    else
      anagram[key] = [word]
    end
  end

  anagram.each_key do |key|
    output.push(anagram[key])
  end

  return output
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
  if check_rows(table) == false || check_columns(table) == false || check_subgrid(table) == false
    return false
  end
  return true
end

def check_unique(array)
  new_array = array.keep_if{|element| element != "."}
  new_array = new_array.uniq
  if new_array.length < array.length
    return false
  end
  return true
end

def check_rows(table)
  table.each do |row|
    if check_unique(row) == false
      return false
    end
  end
  return true
end

def check_columns(table)
  i = 0
  j = 0
  column = []
  for i < table.length
    for j < table.length
      column.push(table[j][i])
      j += 1
      if j == table.length - 1
        if check_unique(column) == false
          return false
        end
      end
    end
    i += 1
    j = 0
    column = []
  end
  return true
end

def check_subgrid(table)
  subgrids = {}
  i = 0
  for i < table.length
    subgrids[i] = []
    

  end
end