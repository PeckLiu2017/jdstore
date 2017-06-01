class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]

  # GET /user_infos
  # GET /user_infos.json
  def index
    @user_infos = UserInfo.all
  end

  # GET /user_infos/1
  # GET /user_infos/1.json
  def show
  end

  # GET /user_infos/new
  def new
    @user_info = UserInfo.new
  end

  # GET /user_infos/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js 
    end
  end

  # POST /user_infos
  # POST /user_infos.json
  def create
    @user_info = UserInfo.new(user_info_params)
    @user_info.user = current_user

    # @order = Order.new
    # @order.user = current_user
    # @order.total = current_cart.total_price
    # @order.save
    #
    # if @user_info.save
    #     current_cart.cart_items.each do |cart_item|
    #     product_list = ProductList.new
    #     product_list.order = @order
    #     product_list.product_name = cart_item.product.title
    #     product_list.product_price = cart_item.product.price
    #     product_list.quantity = cart_item.product.purchase_quantity
    #     product_list.save
    #   end
    @user_info.save
    # respond_to do |format|
    #   format.js{ render :show, status: :ok, location: @user_info }
    # end

  end

  # PATCH/PUT /user_infos/1
  # PATCH/PUT /user_infos/1.json
  def update

      if @user_info.update(user_info_params)
        respond_to do |format|
          format.html {
            redirect_to user_info_path(@user_info)
          }
          format.js # update.js.erb
        end

      else
        render :action => "edit"
      end

  end

  # DELETE /user_infos/1
  # DELETE /user_infos/1.json
  def destroy
    @user_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_params
      params.require(:user_info).permit(:user_id, :name, :tel, :address,:province,:city,:county)
    end
end
