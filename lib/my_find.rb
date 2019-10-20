require 'pry'

def my_find(collection)
  i = 0 
  block_return_values = [] 
  while i < collection.length 
  yield(collection[i])
  block_return_values << collection[i]
  i +=1 
  end
    if block_return_values.find
end 

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }