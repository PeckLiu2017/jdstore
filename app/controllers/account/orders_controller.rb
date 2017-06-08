class Account::OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
     @orders = current_user.orders.order("id DESC")
  end

  def show
    @order = Order.find_by(token: params["token"])
  end

  def coupon
    @orders = current_user.orders.order("id DESC")
  end

  def profile

  end

  def address

  end

  def support

  end

  def nickname
    # @user = current_user
    # @user.nickname =
  end

end
