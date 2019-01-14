require 'pry'

def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
  # returns true if all words start with letter r, false if not
end

def contain_a(array)
  array.select { |word| word.include? "a" }
end

def first_wa(array)
  new_array = []
  array.each do |item|
    if item.to_s.start_with?("wa")
      new_array << item
    end
  end
  new_array.first
end

def remove_non_strings(array)
  array.select { |thing| thing.class == String }
end

def count_elements(array)
  array.uniq # returns new array without duplicates:
  .map { |x| {:name => x[:name], count: array.count(x)} }
end

# ANOTHER WAY: .group_by returns a hash: the keys are the result of the block, the values are an array of the elements that match that key. Then .map (returns array) over each element of the new hash, creating the new key/value pairs required to pass the test...
# def count_elements(array)
#   array.group_by { |x| x }
#   .map {|key, value| key[:count] = value.size ; key }
# end

def merge_data(keys, data)
  # should return an array of hashes
  data[0].values # values of first element of data array are hashes of details for each name (names are the keys)
  .map.with_index do |v, i|
    keys[i].merge(v)
  binding.pry
end
end

def find_cool(names_hash)
  names_hash.each do |k, v|
    if k[:temperature] == "cool"
      return [k] # return the key as an array
    end
  end
end

def organize_schools(schools)

end
