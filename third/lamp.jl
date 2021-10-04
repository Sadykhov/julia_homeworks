struct Lamp
    powers::Float64
    coasts::Float64
end

function coast__power(l::Lamp)
    a = l.powers / l.coasts
    println(a)
end

lampa = Lamp(2,2)

coast__power(lampa)