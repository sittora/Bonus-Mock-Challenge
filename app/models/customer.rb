class Customer < ActiveRecord::Base
    has_many :orders

    # Customer#total_spent returns the amount of money a customer has spent on orders. (Remember that the Order table has a quantity.)
    def total_spent
        #get all orders by customer id,
        all_orders = Order.where(customer_id: self.id)
        #for each order multiply the price by the quantity
        total = 0
        all_orders.map {|order| 
            sum = order.price * order.quantity
            total += sum
        }
        
        return total
    end
    
    # Customer#total_orders returns the number of orders a customer has made.
    def total_orders
        #get all orders by customer id,
        all_orders = Order.where(customer_id: self.id)
        
        return all_orders.count
    end
    
    # Customer#refund removes the customer's last order.
    def refund
        last_order = Order.where(customer_id: self.id).order(:id).last
        
        last_order.destroy
    end
    
    # Customer#favorite_drink returns the name of the drink a customer orders most frequently.
    def favorite_drink
        all_orders = Order.where(customer_id: self.id)
        #for each order multiply the price by the quantity
        drinks = {}
        all_orders.map {|order| 
            if !drinks[order.drink]
                drinks[order.drink] = 0
            else
                drinks[order.drink] += order.quantity
            end 
        }
        
        favorite_drink = drinks.key(drinks.values.max)        
        return favorite_drink
    end
end
