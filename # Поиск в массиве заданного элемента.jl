# Поиск в массиве заданного элемента
function quick_sort!(A)
if isempty(A)
return A
end
N = length(A)
K, M = part_sort!(A, A[rand(1:N)]) # - "базовый" элемент массива выбирается
случайным образом
quick_sort!(@view A[1:K])
quick_sort!(@view A[M:N])
return A
end
#Базовй пример:

array1 = [ 12, 35, 7, 34, 72, 12, 5 ]
sch = 12

indexArray = findall( x -> x == sch, array1 )
for i in indexArray
	println("Element found at position ", i)
end
