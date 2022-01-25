class ProductsController < ApplicationController
  def index
    products = Product.all
    if params[:name]
      name = params[:name]
      products = products.where("name iLIKE ?", "%#{name}%" )
    end
    if params[:sort] == "price"
      products = products.order(:price)
    end
    render json: products.as_json
  end

  def create
    product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description]
    )
    if product.save
      render json: product
    else
      render json:{errors: product.errors.full_message}
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.inventory = params[:inventory] || product.inventory
    if product.save
      render json: product
    else
      render json:{errors: product.errors.full_message}
    end
  end

  def show
     id = params[:id]
     id = id.to_i
    product = Product.find_by(id:id)
    render json: product
  end

  def delete
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "The product had been succesfully destroyed"}
  end
end
