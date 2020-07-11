TAX_RATE = 0.095

def tax_your_check(pay_amount)
  tax_total = pay_amount * TAX_RATE
  return pay_amount - tax_total
end

print "How much do you make? "
pay = $stdin.gets.chomp.to_f

puts "After tax, you make #{tax_your_check(pay)}"
