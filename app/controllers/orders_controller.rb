class OrdersController < ApplicationController
  before_action :authenticate_user
  def create
    product = Product.find(params[:product_id])
    subtotal = product.price * params[:quantity]
    tax = product.price * 0.1 * params[:quantity]
    total = subtotal + tax
    order = Order.new(
      product_id: params[:product_id], 
      user_id: current_user.id, 
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax ,
      total: total
    )
    if order.save
      render json: order
    else
      render json:{errors: order.errors.full_messages}
    end
  end

  def show
    order = current_user.orders.find(params[:id].to_i)
    if order
      render json: order.as_json
    else 
      render json: [], status: :unauthorized
    end
  end
    
  def index
    orders = current_user.orders
    render json: orders.as_json
  end
end
