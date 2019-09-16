# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n)
# Space Complexity: O(n)

require 'pry'

def grouped_anagrams(strings)
  return [] if strings.empty?

  anagram_hash = Hash.new()
    strings.each do |string|
      word_array = string.split("").sort
      if anagram_hash.include?(word_array)
        anagram_hash[word_array] << string
      else
        anagram_hash[word_array] = [string]
      end
    end

    result = []
    anagram_hash.each do |key, value|
      result << value
    end
    return result

end

# This method will return the k most common elements
# in the case of a tie it will select the first occurring element.
# Time Complexity: O(n)
# Space Complexity: O(n)
def top_k_frequent_elements(list, k)
  return [] if list.empty?
  return list if list.length == 1

  element_count = Hash.new()

  list.each do |element|
    if element_count[element]
      element_count[element] += 1
    else
      element_count[element] = 1
    end
  end

  result = []

  k.times do |i|
      count = 0
      frequent_element = nil
      element_count.each do |element, frequency|
        if frequency > count
          count = frequency
          frequent_element = element
        end
      end
      result << frequent_element
      element_count[frequent_element] = 0 if frequent_element
    end

  return result

end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: I have no idea...O(n^2) since I have nested loops?
# Space Complexity: O(n)
def valid_sudoku(table)

  return true if in_row?(table) && in_column?(table) && in_box?(table)

  return false

end

  def in_row?(table)
    table.length.times do |row|
        sudoku_hash = Hash.new()
        table.length.times do |i|
          # If already encountered before,
          # return false
          if sudoku_hash[table[row][i]]
            return false
          end

          # If it is not an empty cell, insert value
          # at the current cell into the hash
          if table[row][i] != '.'
          sudoku_hash[table[row][i]] = 1
          end

        end
    end
  end

  # Checks whether there is any
  # duplicate in current column or not.
  def in_column?(table)

    table.length.times do |col|
      column_hash = Hash.new()

      table.length.times do |i|

        # If already encountered before,
        # return false
        if column_hash[table[i][col]]
          return false
        end

        # If it is not an empty cell, insert
        # value at the current cell in the set
        if table[i][col] != '.'
          column_hash[table[i][col]] = 1
        end
      end
    end
  end

  # Checks whether there is any duplicate
  # in current 3×3 box or not.
  def in_box?(table)

  # formula from https://stackoverflow.com/questions/41020695/how-do-i-split-a-9x9-array-into-9-3x3-components
  grids = table.each_slice(3).map{|strip| strip.transpose.each_slice(3).map{|chunk| chunk.transpose}}.flatten(1)

  grids.each do |box|
      box_hash = Hash.new()
      3.times do |row|
        3.times do |col|
           current = box[row][col]
            if box_hash[current]
              return false
            end
            if current != '.'
              box_hash[current] = 1
            end
        end
      end

    end

end
