# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: ?
# Space Complexity: ?
def grouped_anagrams(strings)
  if strings.length == 0
    return []
  end

  hash = Hash.new
  array_of_words = []

  # in a loop
    # split the word at ("") and sort it and save the results into an array (if 2 words are anagrams of each other, sorting them means the letters of both words will be re-arranged in the same sequence)
  strings.each do |word|
    array_of_words = word.split("").sort

    # check if the hash has the element of the array as a key, if not then add it as a key in the hash
    if hash.include?(array_of_words)
      hash[array_of_words].push(word)
    # check if the 2nd element is in the hash, if not then add it as a value to the key that was previously added
    else
      hash[array_of_words] = [word]
    end
  end

  # puts "Hash"
  # puts hash

  # save the values of the hash into an array and return that array
  anagrams = []
  hash.each do |key, value|
    anagrams.push(value)
  end
  return anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)

  if list.length == 0
    return []
  end

  hash = Hash.new
  # loop through the list
    # add each element in the list as a key in k with a count value (to count how many times that particular element exists in the list)
    # if element doesn't exist in the hash, then add it with a default value of 1

    list.each do |element|
      if hash.include?(element)
        hash[element] += 1
      else
        hash[element] = 1
      end
    end

      # in the hash, we can sort the key value pairs by order of occurence (most occurrences first)
      # we can push the highest occurening keys into an array and return the array

      top_k = []
      hash.sort_by { |key, value| value }
      hash.each do |key, value|
        top_k << key
      end
      return top_k[0..(k - 1)]
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