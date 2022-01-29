class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity)
        self.total+= price
        @items << title
    end

    def apply_discount

    end

    def items()
        @items
    end
end