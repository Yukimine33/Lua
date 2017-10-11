x = math.pi
print(x - x%1) --取一个数的整数部分
print(x - x%0.01) --保留小数点后两位

print(4 and 5) --逻辑操作符and：第一个为假，则返回第一个值，否则返回第二个值 -->5
print(4 or 5) --逻辑操作符or：第一个为真，则返回第一个值，否则返回第二个值 -->4

print(nil and 1) -->nil
print(nil or 1) -->1
print(false and 1) -->false
print(false or 1) -->1
print(nil and false) -->nil
print(nil or false) -->false

print("please enter the first number:")
x = io.read("*number")
print("please enter the second number:")
y = io.read("*number")
max = (x>y) and x or y --比较两个数字大小
print(max)

print(not nil) --逻辑操作符not近返回true或false -->true
print(not 1) -->false

a = "hello"
print(a .. " world") --字符串连接 -->hello world
print(a) --字符串的不可变性 -->hello

w = {x=0,y=0,label="console"}
x = {1,2,3}
w[1] = "another field"
x.f = w
print(w["x"]) -->0
print(w[1]) -->another field
print(x.f[1]) -->another field
w[1] = nil -->删除table w中key为"x"的字段

a = {"a","b","c";"d","e"}
for i=1,#a do print(a[i]) end

a,b = 10,"abc" --lua中的多重赋值
print(a,b) -->10 abc
a,b = b,a
print(a,b) -->abc 10

a,b,c = 0,1
print(a,b,c) -->0 1 nil

do --局部变量及作用域
 local m = 1
 local n = 2
 x = m + n
 y = m % n
end
print(x,y,m,n) -->3 1 nil nil

local a,b = 1,10
if a<b then
 print(a) -->1
 local a
 print(a) -->nil
end
print(a,b) -->1 10

if a > 0 then --lua中的if(或elseif) then else
 print("aaa")
elseif a < 0 then
 print("bbb")
else
 print("ccc")
end

local i =1 --lua中的while循环
while i == 1 do
 print(i)
 i = i + 1
end

i = 2 --lua中的repeat循环
repeat
 i = i * 2
until i > 32
print(i) -->64

for iq=1,5 do print(iq) end --lua中的数字型for循环
max = iq --for循环中的控制变量会自动声明为for语句中的局部变量
print(max) -->nil

l1 = {"a","b","c"} --lua中的泛型for循环
l2 = {}
for k,v in pairs(l1) do
 print(l1[k])
 l2[v] = k
end
for m,n in pairs(l2) do
 print(m)
end
