class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @orders}
    end
  end

  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @order}
    end
  end
end