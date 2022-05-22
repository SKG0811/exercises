# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.

# Ruby  introduced a lazy enumeration feature. Lazy evaluation increases performance by avoiding needless calculations,
# and it has the ability to create potentially infinite data structures.

def prime?(x)
    return false if x == 1 
    return true if x < 4
    a = (x**0.5).to_i
    (2..a).none? { |div| x % div == 0 }
end

def  palindromic?(x)
    x.to_s == x.to_s.reverse and prime?(x)
end

n = gets
p 1.upto(Float::INFINITY).lazy.select { |x| palindromic?(x) }.first(n.to_i)
