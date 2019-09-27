require "pry"

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * m log m) where m is the number of strings, and m is the length of a string
# Space Complexity: O(n * m) where n is the number of strings, and m is the length of a string (m space complexity from sort)

def grouped_anagrams(strings)
  buckets = {}
  strings.each do |str| 
    sorted = str.chars.sort.join 
    if buckets[sorted]
      buckets[sorted] << str
    else
      buckets[sorted] = [str]
    end
  end
  return buckets.values
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n * k), where n is the length of the list and k is the number of common elements to return
# Space Complexity: O(n + k) where n is the length of the list and k is the number of common elements to return
def top_k_frequent_elements(list, k)
  counts = Hash.new(0)
  top_values = Array.new()
  list.each do |el| # O(n)
      counts[el] += 1
      
      if !top_values.include?(el) #O(k)
        index = k - 1
        while index >= 0 #O(k)
          if counts[el] > counts[top_values[index]]
            temp = top_values[index] 
            top_values[index] = el
            top_values[index + 1] = temp if index + 1 < k
            index -=1 
          else
            break
          end      
        end
    end
  end
  return top_values
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  
  # check if rows valid
  table.each do |row|
    counts = Hash.new(0)
    row.each do |char|
      if char.to_i.to_s == char
        counts[char] += 1
        return false if counts[char] > 1
      end
    end
  end

  # check if columns valid
  column = 0
  while column < 9
    counts = Hash.new(0)
    table.each do |row|
      char = row[column]
      if char.to_i.to_s == char
        counts[char] += 1
        return false if counts[char] > 1
      end
    end
    column += 1
  end

  # check if boxes valid

  row_start = 0
  row_end = 3
  
  while row_end <= 9
    col_start = 0
    col_end = 3
    while col_end <= 9

      # iterate through each value in box to check for duplicates
      counts = Hash.new(0)
      (row_start...row_end).each do |row_index|
        (col_start...col_end).each do |col_index|
          char = table[row_index][col_index]
          if char.to_i.to_s == char
            counts[char] += 1
            return false if counts[char] > 1
          end
        end
      end

      # move on to next box in row
      col_start += 3
      col_end += 3
    end
    # move on to next row of boxes
    row_start += 3
    row_end += 3
  end
    

  return true
end