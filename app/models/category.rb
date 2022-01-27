class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories 

  # def products <= this method is the written form of "has_many :products, through: :product_categories", Its not a one for one because the rails shortcut does alot under the hood that this doesn't.
  #   product_categories.map do |handshake|
  #     handshake.product
  #   end
  # end
end
