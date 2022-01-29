class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        self.total+= price * quantity
        quantity.times {|item| self.items << title}
        @last_transaction = price * quantity
    end

    def apply_discount
        if self.discount != 0 then 
            self.total = (self.total * (100 - self.discount) / 100)
            "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total-= @last_transaction
    end
end