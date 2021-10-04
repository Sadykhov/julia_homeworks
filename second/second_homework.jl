include("differ.jl")
function bubble_sort(a)
    n = size(a, 1)
    i = 1
    while i<=n
        j = n
        while j>i
            if abs(a[j-1]) >= abs(a[j])
                x = a[j-1]
                a[j-1] = a[j]
                a[j] = x
            end
            
            j -=1
        end
        i+=1
    end
end

a = [6,4,3,5,6,2,3]
k = Matrix{Float64}(undef, 8, 15)

function  max_min(matrix)
    for i = 1:4
        matrix[i] = rand(Float64.(-100:100))
    end
    
    max = -101
    index_max = 0
    index_min = 0.
    min = 101
    k = 0
    for i = 1:120
        if matrix[i] != 0
            if matrix[i] > max
                max = matrix[i]
                index_max = i
            elseif matrix[i] < min
                min = matrix[i]
                index_min = i
            end
            k +=1
        end 
    end
    if k >0
        result = index_max - index_min
        println(result)
        println(max)
        println(min)
    else
        println("Все элменты нулевые")
    end
end



function sets(stroka)
    words = split(stroka, " ")#все слова разделенные пробелом
    all_elements = split(stroka,"")#все элементы строки
    elements = Set(all_elements)#все элементы строки без повторений
    k = 0#в скольких словах есть данная буква
    l = 0# проверка на то находил ли уже эту букву в это слове
    result = []
    for i in elements
        for word in words
            for j in word
                if i != " " && i != "."
                    if i==string(j) && l == 0
                        k+=1
                        l = 1
                    end
                end
            end
            l = 0
        end
        if k>=2
            append!(result,i)
        end
        k = 0
    end
    println(result)
end

differ.differ_sin(0.49,0.5,0.51)
differ.diifer_tan(0.49,0.5,0.51)