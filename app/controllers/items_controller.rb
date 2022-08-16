class ItemsController < ApplicationController
  before_action :authenticate_user!,only: [:new]

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
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    if @item.update(items_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end
  #def set_item
   # @item =Item.find(params[:id])
  #end


  private
  def items_params
    params.require(:item).permit(:image,  :product_name, :price, :product_description, :category_id, :commodity_condition_id, :burden_of_shipping_charges_id, :shipping_area_id, :days_to_ship_id ).merge(user_id: current_user.id)
  end
end