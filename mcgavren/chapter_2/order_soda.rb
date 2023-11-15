# frozen_string_literal: true

def order_soda(flavor, size = 'medium', quantity = 1)
  plular = 'soda' if quantity == 1
  plular = 'sodas' if quantity > 1
  puts "#{quantity} #{size} #{flavor} #{plular}, coming right up!"
end

order_soda('orange')
order_soda('lemon-lime', 'small', 2)
order_soda('grape', 'large')
