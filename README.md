# Practice Code Challenge Flatiron Cafe

## Learning Goals

- Write Active Record Migrations
- Connect between tables using Active Record Associations
- Write class and instance methods using Active Record
- Use Active Record to query the database

## Introduction

We'll have three models: `Customer`, `Barista` and `Order`.

* An `Order` has one customer and one barista.
* A `Customer` can have more than one order and more than one barista.
* A `Barista` can have more than one order and more than one customer.

## Getting started 

run `bundle install`

## Migrations 

- `Order` should have a drink, a quantity and a price.

- `Barista` should have a name.

- `Customer` should have a name.

* Run the existing migrations.

* There is a migration for `Barista` already written for you.
* There is a migration for `Order` already written for you, but it might have some mistakes. You might have to write a migration to change a column or add a column. Double check!

#### `orders` Table

| Column | Type |
| --- | --- |
| drink | string |
| price | integer |
| quantity| integer|
| ???   |  ???    |
| ???   |  ???    |

#### `barista` Table

| Column | Type |
| --- | --- |
| name | string |

#### `customer` Table

| Column | Type |
| --- | --- |
| name | string |
  
## Relationships

- What associations will this need?
- (i.e. `has_many`, `has_many through`, and `belongs_to`)

## Customer

* `Customer#total_spent` returns the amount of money a customer has spent on orders. (Remember that the `Order` table has a `quantity`.)
* `Customer#total_orders` returns the number of orders a customer has made.
* `Customer#refund` removes the customer's last order.
* `Customer#favorite_drink` returns the name of the drink a customer orders most frequently.

## Barista

* `Barista#drinks_made` returns the number of drinks the barista has filled. (Remember that the `Order` table has a `quantity`.)
* `Barista#customer_list` returns an array of the names of all customers the barista has served.
* `Barista.unique_customers` returns an array of names of all customers served by all baristas with no repeats.

## Order

* `Order.busiest_barista` returns the barista who has filled the most orders.
* `Order.best_customer` returns the customer who has ordered the most drinks.
* `Order#print_details` returns a string: `<customer name> ordered <quantity> of <drink name> from <barista name>.`

## Don't forget to use rake console and pry!

## BONUS

* `Customer#favorite_barista` returns the name of the barista the customer orders from most often.
