class OrdersController < ApplicationController
  before_action :authenticate_user! ,only:[:create]
  #  def index
  #    @orders = Order.all
  #  end

   def create
     @order = Order.new(order_params)
     @order.user = current_user
     @order.total = current_cart.total_price
     user_info_id = params[:user_info_id]
     @user_info = UserInfo.find(user_info_id)
     @order.user_info = @user_info

     if @order.save
         current_cart.cart_items.each do |cart_item|
         product_list = ProductList.new
         product_list.order = @order
         product_list.product_id = cart_item.product.id
         product_list.product_name = cart_item.product.title
         product_list.product_price = cart_item.product.price
         product_list.quantity = cart_item.product.purchase_quantity
         product_list.save
       end
      current_cart.clean!
      # OrderMailer.notify_order_placed(@order).deliver!

       redirect_to order_path(@order.token)
      # redirect_to order_path(@order)

     else
       render 'carts/checkout'
     end
   end

   def show
      @order = Order.find_by_token(params[:id])
      if @order.blank?
        @order = Order.find_by(token: params["token"])
        # @user_info = UserInfo.find(params[:user_info_id])
      end
      @product_lists = @order.product_lists
   end

   def pay_with_alipay
       @order = Order.find_by_token(params[:id])
       @order.set_payment_with!("alipay")
       @order.make_payment!

       redirect_to order_path(@order.token), notice: "使用支付宝成功完成付款"
   end

   def pay_with_wechat
     @order = Order.find_by_token(params[:id])
     @order.set_payment_with!("wechat")
     @order.make_payment!

     redirect_to order_path(@order.token), notice: "使用微信成功完成付款"
   end
   private

   def order_params
     params.require(:order).permit(:billing_name, :billing_address, :shipping_name, :shipping_address)
   end
end
