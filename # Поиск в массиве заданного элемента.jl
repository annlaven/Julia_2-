# Поиск в массиве заданного элемента
array1 = [ 12, 35, 7, 34, 72, 12, 5 ]
sch = 12

indexArray = findall( x -> x == sch, array1 )
for i in indexArray
	println("Element found at position ", i)
end
if (length( findall( x -> x == sch, array1 )) == 0)
	println("Element not found.")
end

array2 = [ 23 56 12; 1 7 12; 23 67 34 ]
sch = 7

indexArray = findall( x -> x == sch, array2 )
for i in indexArray
	println("Element found at ", i)
end
if (length( findall( x -> x == sch, array2 )) == 0)
	println("Element not found.")
end
	
array3 = cat([1 2 3; 5 4 2; 3 5 6],
			[1 5 3; 3 1 7; 8 0 1],
			[1 3 6; 3 7 7; 8 8 2], dims=3)
sch = 14

indexArray = findall( x -> x == sch, array3 )
for i in indexArray
	println("Element found at ", i)
end
if (length( findall( x -> x == sch, array3 )) == 0)
	println("Element not found.")
end
