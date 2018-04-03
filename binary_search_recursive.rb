def binary_search_recursive(collection, low, high, value)
	mid = (high+low)/2
	return -1 if high < low
	if collection[mid] == value
		return mid
	elsif collection[mid] < value
		binary_search_recursive(collection, mid+1, high, value)
	else
		binary_search_recursive(collection, low, mid-1, value)
	end	
end

# Test
# arr = [1,2,3,4,5,6,7]
# puts binary_search_recursive(arr, 0, arr.length-1, 5)