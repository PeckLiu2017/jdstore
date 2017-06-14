class Account::OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
      # binding.pry
     @orders = current_user.orders.order("id DESC")
  end

  def show
    @order = Order.find_by(token: params["token"])
  end

  def coupon
    @orders = current_user.orders.order("id DESC")
  end

  def profile

    # @user = current_user
    # @user.nickname =
  end

  def avatar

  end

  def nickname
    render '_form'
    # @user = current_user
    # @user.nickname =
  end

  def address

  end

  def support

  end


end
