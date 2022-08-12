class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :image, presence: true
  validates :product_name, :product_description,  :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  
  with_options numericality: { other_than: 1, message: "can't be blank" } do
  
  validates :burden_of_shipping_charges_id, :shipping_area_id, :days_to_ship_id, :commodity_condition_id, :category_id
  end

  has_one_attached :image
  belongs_to :user

  
  belongs_to :category

end
