def grouped_anagrams(strings)
  h = {}
  solution = []
  strings.each do |word|
    chars = word.split('').sort().join()
    if !h[chars]
       h[chars]= []
    end
    h[chars] << word
    return solution
  end
end

def top_k_frequent_elements(list, k)
counts = {}

  list.each do |single|
    counts[single] ||= 0
    counts[single] += 1
  end

deltas = {}

  counts.keys.each do |num|
    deltas[counts[num]] ||= []
    deltas[counts[num]] << num
  end

remains = k
max = deltas.keys.max
solution = []

while remains > 0 && max >=0
  if deltas[max]
    deltas[max].each do |num|
      solution << num
      remains -= 1
      break if remains == 0
    end
  end
max -= 1
end
return solution
end