s = ""
t = ""
-- if the number of parameters is greater than 1, then send the parameter to t
if(#arg > 0) then
t = arg[1]
else
-- if do not have parameter, then means is a file
t = io.read("*a")
end
--string.format("%02x",number) format the string type or transfer number to string format. The usage is similar as 'printf' of C language. In this part we transfer characters to hex of 2-bits.
--execute for loop, from i=1 to i=t. set exp3 as default, default value is 1.
for i = 1,#t,2 do
	tmp = string.find(string.sub(t,i,i+1),"[^0-9a-fA-F]")
	if(tmp == nil) then
		s = s..string.char(string.format("%d","0x"..string.sub(t,i,i+1)))
	else
		print("input character error，in:",tmp)
		return
	end
end
print(s)
