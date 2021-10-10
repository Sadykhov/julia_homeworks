function system_of_ratios()
    print("Input x:")
    try
        x = parse(Float64, readline())
        if x < -1
            print(-(1 / x))
        elseif x >= -1 && x < 2
            print(x^2)
        else
            print(4)
        end
    catch err
        error("someting error in ratios")
    end
    
end

function perimetr()
    pi = 3.14159265359
    print("Input Radius:")
    R = parse(Float64, readline())
    a = 2*R*sin(π/6)
    circle_per = 2*pi*R
    i = 6
    per = a * 6
    while ((circle_per - per) >= 10^(-3))
        i *=2
        a = sqrt(2*(R^2) - 2*R*(sqrt((R^2) - ((a^2)/4))))
        per = a*i
        if ((circle_per - per) <= 10^(-3))
            print("Perimenetr = ", per)
        end
    end
end

function perimetr_test()
    try
        return perimetr()
    catch
        error("error in perimetr task")
    end
end

perimetr_test()