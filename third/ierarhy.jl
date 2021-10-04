struct Object1
    word::String
end

struct Object2
    word::String
    dlina::Int64
end

function task(o::Object1)
    println(length(o.word))
end


function task_soglasnye(o::Object2)
    if length(o.word) == o.dlina
        println("slovo:", o.word)
        println("dlina slova:", o.dlina)
        sogl = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        k = 0
        for i in o.word
            for j in sogl
                if string(i)==string(j)
                    k+=1
                end
            end
        end
        println("count of sogl = ", k)
    else
        println("Длина не совпадаеит с фактической длиной")
    end
end
obj = Object2("kora",4)
task_soglasnye(obj)
  