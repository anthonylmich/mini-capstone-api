class ProductsController < ApplicationController
  def products_all
    products = Product.all
    render json: products.as_json
  end
  def first_product
    product = Product.first
    render json: product.as_json
  end
  def last_product
    product = Product.last
    render json: product.as_json
  end
  def second_product
    product = Product.all[1]
    render json: product.as_json
  end
  def third_product
    product = Product.all[2]
    render json: product.as_json
  end
  def fourth_product
    product = Product.all[3]
    render json: product.as_json
  end
end
