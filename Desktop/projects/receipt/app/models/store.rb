class Store < ActiveRecord::Base


@cart = {"taters" => 2, "honey" => 4, "cereal" => 3}
@cart_total = @cart.values 
sum = 0
@item_quantity = @cart.count
@tax = 0.08

  def checkout()
    @subtotal = @cart_total.inject{|sum,x| sum + x }
    @total = (@subtotal * @tax) + @subtotal
  end
  puts checkout()
end
