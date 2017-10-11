print("hello world") --打印hello world
print()
function fact(n) --构造函数
 if n ==0 then
  return 1
 else
  return n * fact(n-1)
 end
end

--[[
print("Enter a number:")
a= io.read("*number")
print(fact(a))
--]]

--[[
print("000") --注释的使用
--]]

print(a) --lua中的nil型
print()

a = "one string" --lua中字符串不能直接更改，要用string.gsub替换
b = string.gsub(a,"one","another")
print(a)
print(b)
print()

print("one line\nnext line\n\"in quotes\",'in quotes'") --lua中的转义序列，和C类似
print()

--[=[
page = [[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
<a href="http://www.lua.org">Lua</a>
</body>
</html>
]]
write(page)
--]=]

print("10" + "1") --lua中字符串与数字的转换
print("10 + 1")
print(10 .. 2)
print(10 == "10")
print()

print("please enter a number:")
line = io.read() --强制转换
n = tonumber(line)
if n == nil then
 error(line .. "is not a valid number")
else
 print(n*2)
end

print(tostring(10) == "10")
print(10 .. "" == "10")
print()

a = "hello" --#获取字符串长度
print(#a)
print()

a = {} --lua中的table
k = "x"
a[k] = 10
a[20] = "great"
print(a["x"])
k = 20
print(a[k])
a["x"] = a["x"] + 1
print(a["x"])

b = a
print(b["x"])
b["x"] = 20
print(a["x"])
a = nil
b = nil

a = {}
for i=1,1000 do a[i]=i*2 end
print(a[9])
a.x = 10
print(a.x)
print(a.y)

a = {}
x = "y"
a[x] = 10
print(a[x])
print(a.x)
print(a.y)

a = {}
for i=1,10 do a[i] = io.read() end
for i=1,#a do print(a[i]) end --#a表示数组或表的最后一个索引值
print(a[#a]) --打印列表a的最后一个值
a[#a] = nil --删除列表a的最后一个值
a[#a + 1] = 10 --将10添加到列表末尾
for i=1,#a do print(a[i]) end

i = 10; j = "10"; k = "+10"
a = {}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[j])
print(a[k])
print(a[tonumber(j)])
print(a[tonumber(k)])
