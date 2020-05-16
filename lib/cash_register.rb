require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1 )
    line_qty = []
    @line_qty = line_qty
    line_items = []
    @line_items = line_items
    @line_items << price
    @total = @total + price * quantity
    @title = title
    @items = @items.fill(@title, @items.size, quantity)
  end


  def apply_discount
    percent = discount.to_f*0.01
    employee_d = @total * percent
    @total = @total - employee_d
    @total = @total.to_i
      if @total > 0
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
    end
  end

  def items
    @items
   end

  def void_last_transaction
    last_item = @line_items.join().to_f
    @total = @total - last_item
  end










end
