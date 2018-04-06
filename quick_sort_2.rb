def quick_sort(arr, from=0, to=nil)
	to = arr.length-1 if to == nil
	return arr if from >= to
	min = from
	max = to
	pivot = arr[max]
	free = max-1
	while min < max
		if arr[min] >= pivot
			arr.insert(free, arr[min])
			arr.delete_at(min)
			free -= 1
		end
		min += 1 
	end
end

array = [4,5,3,5,7,2]
sorted = quick_sort(array)
puts sorted