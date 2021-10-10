struct Slovo
    word::String
    dlina::Int64
end

struct Predozenie
    slova::Array{Slovo}
    count::Int64
end
slovo1 = Slovo("koa", 3)
slovo2 = Slovo("ab", 2)
slovs = [slovo1, slovo2]
if length(slovs) >10
    printl("error")
else
    k = length(slovs)
    predl = Predozenie(slovs, k)
end

function task_count_word(p::Predozenie)
    k = 0
    sogl = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    for i in p.slova
        for j in sogl
            if string(i.word[1]) == string(j)
                k+=1
            end
        end
    end
    println(k)
end

function init_word(a, k)
    try
        return Slovo(a,k)
    catch
        error("error Init word")
    end
end

function init_pred(a, k)
    try
        return Predozenie(a,k)
    catch
        error("init predl errror")
    end
end

function test_task_last()
    a = init_word("kobra",5)
    b = init_word("Thanos",5)
    c = [a,b]
    d = init_pred(c, length(c))
    try
        task_count_word(d)
    catch
        error("pred task error")
    end
end