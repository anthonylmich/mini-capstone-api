class OrdersController < ApplicationController
  def create
    order = Order.new(
      product_id: params[:product_id], 
      user_id: current_user.id, 
      quantity: params[:quantity],
      subtotal: Product.find(params[:product_id]).price * params[:quantity],
      tax: Product.find(params[:product_id]).price * 0.1 * params[:quantity], 
      total: Product.find(params[:product_id]).price * params[:quantity] + Product.find(params[:product_id]).price * 0.1 * params[:quantity]
    )
    if order.save
      render json: order
    else
      render json:{errors: order.errors.full_messages}
    end
  end

  def show
    id = params[:id].to_i
    order = Order.find(id)
    render json: order.as_json
  end
    
  def index
    orders = Order.all
    render json: orders.as_json
  end
end
