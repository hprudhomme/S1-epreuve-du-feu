x = ARGV[0].to_i;

def fac(x)
    if x == 1
        return 1
    else
        y = x * fac(x - 1)
        return y
    end
 end

print fac(x)