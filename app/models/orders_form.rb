class OrdersForm
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :post_code, :municipalities, :address, :building_name, :phone_number, :purchase_id, :shipping_area_id, :token

  with_options presence: true do
  validates :token
  validates :item_id
  validates :user_id
  validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "例）123-4567"}
  validates :municipalities, format: {with: /\A[ぁ-んァ-ン一-龥ヶ-]/ }
  validates :address
  validates :shipping_area_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :phone_number, format: {with:  /\A\d{10,11}\z/}
end
   
  def save
    purchase = Purchase.create(item_id:item_id, user_id:user_id)
    
    ShippingAddress.create(shipping_area_id: shipping_area_id, post_code: post_code, municipalities: municipalities, address: address, building_name: building_name, phone_number: phone_number, purchase_id: purchase.id)
 
    end
  end