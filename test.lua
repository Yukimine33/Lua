print("hello world") --��ӡhello world
print()
function fact(n) --���캯��
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
print("000") --ע�͵�ʹ��
--]]

print(a) --lua�е�nil��
print()

a = "one string" --lua���ַ�������ֱ�Ӹ��ģ�Ҫ��string.gsub�滻
b = string.gsub(a,"one","another")
print(a)
print(b)
print()

print("one line\nnext line\n\"in quotes\",'in quotes'") --lua�е�ת�����У���C����
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

print("10" + "1") --lua���ַ��������ֵ�ת��
print("10 + 1")
print(10 .. 2)
print(10 == "10")
print()

print("please enter a number:")
line = io.read() --ǿ��ת��
n = tonumber(line)
if n == nil then
 error(line .. "is not a valid number")
else
 print(n*2)
end

print(tostring(10) == "10")
print(10 .. "" == "10")
print()

a = "hello" --#��ȡ�ַ�������
print(#a)
print()

a = {} --lua�е�table
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
for i=1,#a do print(a[i]) end --#a��ʾ����������һ������ֵ
print(a[#a]) --��ӡ�б�a�����һ��ֵ
a[#a] = nil --ɾ���б�a�����һ��ֵ
a[#a + 1] = 10 --��10��ӵ��б�ĩβ
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
