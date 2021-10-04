module differ
export differ_sin
export diifer_tan
function differ_sin(a, b, c)
    a0 = sin(a)
    a1 = sin(b)
    a2 = sin(c)
    h = b-a
    y0 = (-3*a0 + 4*a1-a2)/(2*h)
    y1 = (-a0 + a2)/(2*h)
    y2 = (a0-4*a1+3*a2)/(2*h)
    println("differ for sinus")
    println("y0=", y0)
    println("y1=", y1)
    println("y2=", y2)
end

function diifer_tan(a,b,c)
    a0 = tan(a+1)
    a1 = tan(b+1)
    a2 = tan(c+1)
    h = b-a
    y0 = (-3*a0 + 4*a1-a2)/(2*h)
    y1 = (-a0 + a2)/(2*h)
    y2 = (a0-4*a1+3*a2)/(2*h)
    println("differ for tanges:")
    println("y0=", y0)
    println("y1=", y1)
    println("y2=", y2)
end

end