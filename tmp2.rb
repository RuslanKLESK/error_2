# cart = { product: {amount: 0.0, cost: 0.0} }
# cart = [ { product => "" }, { amount: 0.0, cost: 0.0} } ] 
# cart = { [ product, amount, cost] }
# cart = [ { product: "", amount: 0.0, cost: 0.0 } ] 	# Если так, то при добавлении имени товара - уже Символ в Число пытется что-то перевести!

cart = { product: { amount: 0, cost: 0 } }		# Так работает!  Но склеена цена, количество!  Но разъединил Имя продукта!

# ПОПРОБОВАТЬ: cart = { n => ( product: " ", amount: 0, cost: 0} }
   # Обращение можно по  cart[n] - n - новый порядковый нмоер списка продуктов.

# cart = Array.new(10){Hash(products: '', amount: 0.0, cost: 0.0)}
# cart = Array.new( { products: '', amount: 0.0, cost: 0.0} )

loop do
puts " "

puts "Выберите действие?"
puts "Напечатайте 'add' для добавления товара."
puts "Напечатайте 'end' показать все товары."
puts "Напечатайте 'stop' для выхода из программы."

choice = gets.chomp.downcase
break if choice == "stop"

case choice

when 'add'
# ТОВАР: 
  puts "Введите название товара:"
  product = gets.chomp.downcase
  
  if cart[product.to_sym].nil?
    cart[product.to_sym] = product

# КОЛИЧЕСТВО:
    puts "Введите количество (может быть не целым числом)."
    amount = gets.chomp.to_f
    cart[:product][:amount] += amount.to_f

# СТОИМОСТЬ:	
	puts "Введите цену за единицу товара (может быть не целым числом)."
    cost = gets.chomp.to_f
    cart[:product][:cost] += cost.to_f
	
# ЦЕНА:
	# Сразу подсчитаем сумму по товару, чтобы потом сложить все sum
    # sum = cart[:product][:sum].push(cart[:product][:amount] * cart[:product][:cost])	# или в конце перебор в блоке с:   b.grep(12..24) { |n| n*n}
	# cart[:product][:sum] += sum.to_f
	
    puts "Товар: #{product} добавлен в количестве #{amount} с ценой #{cost}."
  else
    puts "Продукт уже есть! #{[product.to_sym]}."
end


when 'end'
   cart[:product].values.each do | x | cart.values
	puts "#{cart[:product]} #{cart[:product][amount]} #{cart[:product][cost]}"
	 #puts "Общий вид корзины: #{products}"
    # puts "ПРОДУКТ #{product} КОЛИЧЕСТВО: #{amount} СТОИМОСТЬ: #{cost} ЦЕНА: #{sum}"
	# puts cart - {:product=>{:amount=>9.0, :cost=>9.0}, :apple=>"apple", :orange=>"orange"}
	
	# puts cart.keys	# product		apple		orange

	# "Общая сумма покупок: #{sum}"
	
	
	cart[:product].each do | p | puts "#{p}"
	
	end
  end 
  
end

end












