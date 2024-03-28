"""Поиск всех максимальных значений массива"""
function swap!(array::AbstractVector, i::Int, j::Int)
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
end
function findAllMax(array::AbstractVector)
    index_max = Vector{Int}(undef, length(array))
    index_max[begin] = firstindex(array)
    j = 1
    for i in 1:length(array)
        if array[i] > array[index_max[begin]]
            index_max[begin] = i
            j = 1
        elseif array[i] == array[index_max[begin]]
            index_max[begin+j] = i
            j+=1
        end
    end
    return index_max[1:j]
end
