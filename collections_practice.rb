require 'pry'

# your code goes here
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
  # counting instances of names in an array
end

def merge_data(keys, data)
  # should return an array of hashes
  keys.each do |k, v|
    # if k[:first_name] == "blake"
    binding.pry
    v.each do |x, y|
      binding.pry
    # end
  end
  end

end

def find_cool(names_hash)
  names_hash.each do |k, v|
    if k[:temperature] == "cool"
      return [k] # return the key as an array
    end
  end
end

def organize_schools()

end
