class ItemsController < ApplicationController
  before_action :authenticate_user!,only: [:new, :edit]
  before_action :find_item, only: [:show, :edit, :update]

 
  def index
    @items = Item.order(id: "DESC") 
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
  if @item.save
    redirect_to root_path
  else
    render :new
  end
  end

  def show
  end

  def edit
    redirect_to root_path unless current_user.id == @item.user_id
  end

  def update
    if @item.update(items_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  
  #def set_item
   # @item =Item.find(params[:id])
  #end

  private
  def items_params
    params.require(:item).permit(:image,  :product_name, :price, :product_description, :category_id, :commodity_condition_id, :burden_of_shipping_charges_id, :shipping_area_id, :days_to_ship_id ).merge(user_id: current_user.id)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end