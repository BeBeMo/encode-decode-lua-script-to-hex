s = ""
t = ""
if (#arg > 0) then
t = arg[1]
else
t = io.read("*a")
end
for i = 1, #t do s = s..string.format("%02x", string.byte(t, i)) end
print(s)
