x = math.pi
print(x - x%1) --ȡһ��������������
print(x - x%0.01) --����С�������λ

print(4 and 5) --�߼�������and����һ��Ϊ�٣��򷵻ص�һ��ֵ�����򷵻صڶ���ֵ -->5
print(4 or 5) --�߼�������or����һ��Ϊ�棬�򷵻ص�һ��ֵ�����򷵻صڶ���ֵ -->4

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
max = (x>y) and x or y --�Ƚ��������ִ�С
print(max)

print(not nil) --�߼�������not������true��false -->true
print(not 1) -->false

a = "hello"
print(a .. " world") --�ַ������� -->hello world
print(a) --�ַ����Ĳ��ɱ��� -->hello

w = {x=0,y=0,label="console"}
x = {1,2,3}
w[1] = "another field"
x.f = w
print(w["x"]) -->0
print(w[1]) -->another field
print(x.f[1]) -->another field
w[1] = nil -->ɾ��table w��keyΪ"x"���ֶ�

a = {"a","b","c";"d","e"}
for i=1,#a do print(a[i]) end

a,b = 10,"abc" --lua�еĶ��ظ�ֵ
print(a,b) -->10 abc
a,b = b,a
print(a,b) -->abc 10

a,b,c = 0,1
print(a,b,c) -->0 1 nil

do --�ֲ�������������
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

if a > 0 then --lua�е�if(��elseif) then else
 print("aaa")
elseif a < 0 then
 print("bbb")
else
 print("ccc")
end

local i =1 --lua�е�whileѭ��
while i == 1 do
 print(i)
 i = i + 1
end

i = 2 --lua�е�repeatѭ��
repeat
 i = i * 2
until i > 32
print(i) -->64

for iq=1,5 do print(iq) end --lua�е�������forѭ��
max = iq --forѭ���еĿ��Ʊ������Զ�����Ϊfor����еľֲ�����
print(max) -->nil

l1 = {"a","b","c"} --lua�еķ���forѭ��
l2 = {}
for k,v in pairs(l1) do
 print(l1[k])
 l2[v] = k
end
for m,n in pairs(l2) do
 print(m)
end
