def quick_sort(collection)
	length = collection.length
	pivot_index = length -1
	# pivot = collection[pivot_index]
		for i in 0..pivot_index
			if collection[i] > collection[pivot_index]
				temp = collection[i]
				collection[pivot_index+1] = temp
				pivot_index--
				collection.delete_at(i)
			end
		end
	collection	

end

arr = [8, 4, 2, 1, 5, 3, 7]
# puts arr
new_arr = quick_sort(arr)
puts new_arr