function max(a) --lua函数可以返回多个结果
local mi = 1
local m = a[mi]
 for i,v in ipairs(a) do
  if v > m then
   mi = i;m = v
  end
 end
 return mi,m
end

print(max({5,1,2,9,10})) -->5 10

function foo0 () end -->无返回值
function foo1 () return "a" end -->一个返回值
function foo2 () return "a","b" end -->两个返回值

x,y = foo2() --x="a",y="b"
x = foo2() --x="a","b"被丢弃
x,y,z = 10,foo2 --x=10,y="a",z="b"
x,y = foo0() --x=nil,y=nil
x,y = foo1() --x="a",y=nil
x,y,z = foo2() --x="a",y="b",z=nil
x,y = foo2(),20 --x="a",y=20
x,y = foo0(),20,30 --x=nil,y=20,30被丢弃

print(foo0()) -->
print(foo1()) -->a
print(foo2()) -->a b
print(foo2(),10) -->a 10
print(foo2() .. "x") -->ax

function foo(i)
 if i ==0 then return foo0()
 elseif i == 1 then return foo1()
 elseif i == 2 then return foo2()
 end
end

print(foo(0)) --无返回值
print(foo(1)) -->a
print(foo(2)) -->a b

print((foo2())) -->a 迫使函数调用只返回一个值

--unpack函数接受数组为参数，从下标1开始返回该数组所有元素
print(unpack{10,20,30}) -->10 20 30
a,b = unpack{10,20,30} --a=10,b=20,30被丢弃

function add(...) --用(...)表示可接受不同数量的实参
 local sum = 0
 for i,v in ipairs{...} do
  sum = sum + v
 end
 return sum
end
print(add(1,2,3,4,5)) -->15
