a=4
b=5
a, b = b, a
puts a,b
x = 0
a, b, c=x, (x += 1), (x += 1)
puts a,b,c

b,(c, d),e=1,2,3,4,5
puts b,c,d,e
b,(c, d),e=[1,2,3,4]
puts b,c,d,e
b,(c, d),e=1,[2,3],4
puts b,c,d,e
b,(c, d),e=1,[2,3,4],5
puts b,c,d,e
b,(c, d),e=1,[2,3,4],5
puts b,c,d,e
