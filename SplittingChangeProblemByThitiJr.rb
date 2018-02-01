balance = 0
until balance > 0
balance = gets.to_f.round(2)
end
save_bal = balance
split = [1000.00,500.00,100.00,50.00,20.00,10.00,5.00,2.00,1.00,0.50,0.25]
calculate = Array.new(11) { |i|  }
i=0
check = false
until i == 11 
	calculate[i] = (balance/split[i]).to_i
	balance-=(split[i]*calculate[i])
	i+=1
end
i=0
sum=0.0
puts "จำนวน  THB #{save_bal}"
temp = save_bal
until i==11
	multiply = split[i]*calculate[i]
	temp-=multiply
	if i<5
		puts "แบงค์  THB #{split[i]} จำนวน #{calculate[i]} ใบ เป็นเงิน THB #{multiply.to_f} คงเหลือ THB #{temp.round(2)}"
	else
		puts "เหรียญ THB #{split[i]} จำนวน #{calculate[i]} ใบ เป็นเงิน THB #{multiply.to_f} คงเหลือ THB #{temp.round(2)}"
	end
	sum+=multiply
	i+=1
end
if sum.round(2)+temp.round(2) == save_bal
	check = true
end
puts "รวม THB #{sum.round(2)} เศษ #{temp.round(2)} cross check: #{check}"