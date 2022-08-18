class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :image, presence: true
  validates :product_name, :product_description,  presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  
  with_options numericality: { other_than: 1, message: "can't be blank" } do
  
  validates :burden_of_shipping_charges_id, :shipping_area_id, :days_to_ship_id, :commodity_condition_id, :category_id
  end

  has_one_attached :image
  has_one :purchase
  
  belongs_to :burden_of_shipping_charges
  belongs_to :commodity_condition
  belongs_to :days_to_ship
  belongs_to :shipping_area
  belongs_to :user
  belongs_to :category
  

end
