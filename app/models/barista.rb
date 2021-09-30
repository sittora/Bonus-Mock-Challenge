class Barista < ActiveRecord::Base
    has_many :orders

    # Barista#drinks_made returns the number of drinks the barista has filled. (Remember that the Order table has a quantity.)
    def drinks_made
        all_orders = Order.where(barista_id: self.id)
        
        return all_orders.count
    end
    # Barista#customer_list returns an array of the names of all customers the barista has served.
    def customer_list
        all_orders = Order.where(barista_id: self.id)
        
        customers = []
        all_orders.map {|order|
            # find their name
            customer_name = Customer.find_by(id: order.customer_id)

            # if they're not in the array, push the name
            if !customers.include? customer_name
                customers.push(customer_name)
            end 
        }

        return customers
    end
    
    # Barista.unique_customers returns an array of names of all customers served by all baristas with no repeats.
    def unique_customers
        all_orders = Order.where(barista_id: self.id)
        
        customers = []
        all_orders.map {|order|
            # find their name
            customer_name = Customer.find_by(id: order.customer_id)

            # if they're not in the array, push the name
            if !customers.include? customer_name
                customers.push(customer_name)
            end 
        }

        return customers
    end

end