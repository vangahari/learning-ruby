# Hashes are nothing like dict's

sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }

puts sample_hash

# Check the class of sample_hash
puts sample_hash.class

# Access values in hash
puts sample_hash['a']
puts sample_hash['c']

# Access all keys and values  from hash
puts sample_hash.keys
puts sample_hash.values

# Check if the key and value is present in hash
puts sample_hash.key?('a')
puts sample_hash.key?('s')
puts sample_hash.value?(3)
puts sample_hash.value?(9)

# Theres another usage of dict using Symbol so these are like dict but Symbol uses as keys and access values and keys are similar like strings but Symbols are uniq and not mutable

sample_hash_with_symbol = { a: 1, b: 2, c: 3 } # we can also do this way {:a=>1, :b=>2, :c=>3}
# If you define like above ruby will convert into {:a=>1, :b=>2, :c=>3}
puts sample_hash_with_symbol
puts sample_hash_with_symbol
puts sample_hash_with_symbol.class

# Access values
puts sample_hash_with_symbol[:a]
puts sample_hash_with_symbol[:c]

# Access all keys and values  from hash
puts sample_hash_with_symbol.keys
puts sample_hash_with_symbol.values

# Check if the key and value is present in hash
puts sample_hash_with_symbol.key?(:a)
puts sample_hash_with_symbol.key?(:s)
puts sample_hash_with_symbol.value?(3)
puts sample_hash_with_symbol.value?(9)

# Iterate through hash
sample_hash.each { |k, v| puts "key #{k} and value #{v}" }

# another way
for k, v in sample_hash do
  puts "key #{k} and value #{v}"
end

# another way
sample_hash.each do |k, v|
  puts "key #{k} and value #{v}"
  puts "key #{k.class} and value #{v.class}"
end

# For Symbol
sample_hash_with_symbol.each do |k, v|
  puts "key #{k} and value #{v}"
  puts "key #{k.class} and value #{v.class}"
end

# Add keys to hash
sample_hash['d'] = 4
sample_hash['son'] = 'adharv'
# puts sample_hash

sample_hash_with_symbol[:d] = 4
sample_hash_with_symbol[:son] = 'adharv'
# puts sample_hash_with_symbol

# Print the value only if it a string
puts sample_hash_with_symbol.select { |_k, v| v.is_a?(String) }
puts sample_hash.select { |_k, v| v.is_a?(String) }

# Delete the key if the value is a string 
puts sample_hash.select { |k,v| sample_hash.delete(k) if v.is_a?(String) }
puts sample_hash
