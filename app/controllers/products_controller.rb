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
    product = Product.second
    render json: product.as_json
  end
  def third_product
    product = Product.third
    render json: product.as_json
  end
  def fourth_product
    product = Product.fourth
    render json: product.as_json
  end
  def product
     id = params[:wildcard]
     id = id.to_i
    product = Product.find_by(id:id)
    render json: product.as_json
  end


end
