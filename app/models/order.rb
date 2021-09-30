class Order < ActiveRecord::Base
    belongs_to :customer
    belongs_to :barista

    # Order.busiest_barista returns the barista who has filled the most orders.
    def busiest_barista
        all_orders = Order.all
        totals = {}
        all_orders.map { |order|
            if !totals[order.barista_id]
                totals[order.barista_id] = 0
            else
                totals[order.barista_id] += 1
            end 
        }

        busiest_barista = totals.key(totals.values.max)        
        return busiest_barista
    end

    # Order.best_customer returns the customer who has ordered the most drinks.
    def best_customer
        all_orders = Order.all
        totals = {}
        all_orders.map { |order| 
          if !totals[order.customer_id]
              totals[order.customer_id] = 0
          else
              totals[order.customer_id] += order.quantity
          end      
        }

        best_customer = totals.key(totals.values.max)
        return best_customer
        
    end

    # Order#print_details returns a string: <customer name> ordered <quantity> of <drink name> from <barista name>.
    def print_details
        customer_name = customer.name
        barista_name = barista.name
        "#{customer_name} ordered #{self.quantity} of #{self.drink} from #{barista_name}"
    end
end