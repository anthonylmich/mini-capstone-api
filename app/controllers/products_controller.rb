class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
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
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id],
    )
    if product.save
      render json: product
    else
      render json:{errors: product.errors.full_message}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.supplier_id = params[:supplier_id] || product.supplier_id
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
