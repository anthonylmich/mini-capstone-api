class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.new(
      product_id: params[:product_id], 
      status: params[:status],
      user_id: current_user.id, 
      quantity: params[:quantity],
      order_id: nil
    )
    if carted_products.save
      render json: carted_products
    else
      render json:{errors: carted_products.errors.full_messages}
    end
  end

  def index
    carted_products = CartedProduct.all
    render json: carted_products.as_json
    # carted_products = current_user.carted_products
    # render json: carted_products.as_json
  end

  def delete
    carted_products = CartedProduct.find(params[:id])
    carted_products.destroy
    render json: {message: "The carted_products had been succesfully destroyed"}
  end

end
