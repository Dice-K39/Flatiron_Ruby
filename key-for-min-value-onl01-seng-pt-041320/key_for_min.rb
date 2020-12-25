# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = nil
  min_value = 0
  
  name_hash.each do |key, value|
    if min_value == 0 || value < min_value
      min_key, min_value = key, value
    end
  end
  
  min_key
end