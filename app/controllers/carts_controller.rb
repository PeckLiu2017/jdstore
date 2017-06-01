class CartsController < ApplicationController
  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
    @user_infos = UserInfo.all
    @user_info = UserInfo.new
    id = params[:productid]
    if !id.blank?
      @product = Product.find(id)
      if !current_cart.products.include?(@product)
        current_cart.add_product_to_cart(@product)
        @product.quantity -= @product.purchase_quantity
        @product.save
      end
    end
  end
end
