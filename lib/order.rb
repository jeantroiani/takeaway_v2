class Order

  attr_accessor :list
  attr_accessor :customer
  
    def initialize
      @list     = []
      @customer = ''
    end

    def update_order_with(item, quantity= 1)
       (quantity).times{list << item}
    end

    def remove_this(*items)
      items.each{|item| list.delete(item)}
    end

    def number_of_items
      list.count
    end

    def total
      list.inject(0){|sum,item| sum + item.price}
    end

    def update_customer_with(name)
      @customer = name
    end

end
