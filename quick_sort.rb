def partition(arr, first, last)

	pivot = arr[last]
	partition_index = first
	i = first

	while i < last
		if arr[i] <= pivot
			temp  = arr[i]
			arr[i] = arr[partition_index]
			arr[partition_index] = temp
			partition_index += 1
		end
		i += 1
	end

	temp = arr[partition_index]
	arr[partition_index] = pivot
	arr[last] = temp
	return partition_index

end

def quick_sort(arr, first, last)
	
	if first < last
		partition_index = partition(arr, first, last)
		quick_sort(arr, first, partition_index - 1)
		quick_sort(arr, partition_index + 1, last)
	end

	return arr

end