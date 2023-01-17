#create a method for sorting an array using recursion and the merge sort technique 

#main merge_sort method is to spilt the array into smaller pieces to pass to the merge method
def merge_sort(array)
  if array.length < 2
   array 
  else
    left = merge_sort(array[0...(array.length/2)])
    right = merge_sort(array[(array.length/2)..])
    merge(left,right)
  end
end

# merge takes each left and right when breaking down and compares the two 
# if one is greater it is pushed to a new array and return 
# Also uses recursion until one side is empty then pushes the rest of the items
def merge(left,right,array = [])
  return array << right if left.empty?
  return array << left if right.empty?
 
  if left[0] < right[0] 
    array.push(left.shift)
  else
    array.push(right.shift)
  end
  
  merge(left,right,array)
  array.flatten
end

