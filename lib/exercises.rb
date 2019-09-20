# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) because it will need to check every item in the array
# Space Complexity: O(1)
def grouped_anagrams(strings)
  if strings.length == 0
    return []
  end

  hash = Hash.new
  temp_word = ""

  # in a loop
    # split the word at ("") and sort it and save the results into an array (if 2 words are anagrams of each other, sorting them means the letters of both words will be re-arranged in the same sequence)
  strings.each do |word|
    temp_word = word.split("").sort

    # check if the hash has the element of the array as a key, if not then add it as a key in the hash
    if hash.include?(temp_word)
      hash[temp_word].push(word)
    # check if the 2nd element is in the hash, if not then add it as a value to the key that was previously added
    else
      hash[temp_word] = [word]
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

# def grouped_anagrams(list)
#   if list.length == 0
#     return []
#   end

#   parent = [[list[0]]]

#   for i in (1...list.length)
#     new_word_srtd = list[i].chars.sort.join
#     is_anagram = false

#     for j in (0...parent.length)
#       old_words_srtd = parent[j][0].chars.sort.join
#       if old_words_srtd == new_word_srtd
#         is_anagram = true
#         parent[j].push(list[i])
#         break
#       end
#     end
#     if is_anagram == false
#       parent.push([list[i]])
#     end
#   end
#   return parent
# end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: O(n) because it will have to loop throught the entire array
# Space Complexity: O(1)
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
      hash.sort_by { |key, value| -value }
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