class OrdersForm
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :post_code, :municipalities, :address, :building_name, :phone_number, :purchase_id, :shipping_area_id,

  with_options presence: true do
  validates :item_id
  validates :user_id
  validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  validates :municipalities, format: {with: /\A[ぁ-んァ-ン一-龥ヶ-]/ }
  validates :address, /\A[0-9]+\z/i
  validates :building_name, format: {with: /\A[ぁ-んァ-ン一-龥ヶ-]/ }
  validates :phone_number, format: {with: /\A[0-9]{3}-[0-9]{4}-[0-9]{4}\z/}
  validates :purchase_id
  end
  validates :shipping_area_id, numericality: { other_than: 1, message: "can't be blank" } do
  
   def save
    purchase = Paurchase.create(item_id: item_id, user_id: user_id)
    
    ShippingAddresses.create(post_code: post_code, municipalities: municipalities, address: address, building_name: building_name, phone_number: phone_number, purchase_id: purchase.id)
 
    end
  end