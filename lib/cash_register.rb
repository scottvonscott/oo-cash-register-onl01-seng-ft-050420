require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1 )
    @total = @total + price * quantity
    @title = title
    @items = @items.fill(@title, @items.size, quantity)


    # @items = @items << @title * quantity

    # @items = quantity.times do
    #   @items << @title
    # end
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
  end










end
