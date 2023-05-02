# Поиск в массиве заданного элемента
array1 = [ 12, 35, 7, 34, 72, 12, 5 ]
sch = 12

indexArray = findall( x -> x == sch, array1 )
for i in indexArray
	println("Element found at position ", i)
end
