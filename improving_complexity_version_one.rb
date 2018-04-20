# This method takes n arrays as input and combine them in sorted ascending  order
def improving_complexity_version_one(*arrays)
  # Join items in all arrays into one unsorted array
  combined_array = arrays.map{|arr| arr}.flatten
  
  #Place the combined array's last item into the sorted array. 
  sorted_array = [combined_array.pop]

  # Loop over the combined array and perform a sorting algorithm
  combined_array.each do |val|
    sorted_array.length.times do |i|
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
    end
  end

  sorted_array

end


arr1 = [9, 8, 7, 6]
arr2 = [32, 43, 54, 21]
arr3 = [12, 90, 72, 11, 10, 43, 12]

improving_complexity_version_one(arr1, arr2, arr3) 