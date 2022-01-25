class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
end

#Make a orders create create route in the routes file
# make an orders controller
# build a create action in the orders controller
#   sanity check and test
#     start rails server
#     make a orders create request in the REST Client
#       tack on some headers/body params
#   make a new order (Order.new) take in params of product_id, user_id, quantity, subtotal, tax, 
#   save the order
#   Happy/sad 
#   test it
# make an orders show
# make an orders index
# Change the orders create action to get user_id from JWT/ (using current_user.id), send Authorization header with request
# Change the orders create action to calculate subtotal/tax/total from the product
