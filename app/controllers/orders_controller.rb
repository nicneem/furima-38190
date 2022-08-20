class OrdersController < ApplicationController
  before_action :find_item, only: [:index, :create]
  
  
  def index
    @order = OrdersForm.new
  end

  def create
    @order = OrdersForm.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end  
  end
    
  private
    def order_params
      params.require(:orders_form).permit(:post_code, :shipping_area_id, :municipalities, :address, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token] )
    end
  
    def find_item
      @item = Item.find(params[:item_id])
    end
  
    def pay_item
       Payjp.api_key = "sk_test_9b459b90523a3cb83307a651" 
       Payjp::Charge.create( 
         amount: @item.price,
         card: order_params[:token],    
         currency: 'jpy'                 
    )
  end
end
 