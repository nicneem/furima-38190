class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :image, presence: true
    validates :product_name, :product_description, :category_id, :commodity_condition_id, :burden_of_shipping_charges_id, :shipping_area_id, :days_to_ship_id, :user_id, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  
  
  
  end

  has_one_attached :image
  belongs_to :user, foreign_key: 'user_id'

  
  belongs_to :category
  belongs_to :item_status
end
