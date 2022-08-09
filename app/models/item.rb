class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :image, presence: true
    validate :images_presence
    validates :name, :text, :category_id, :condition_id, :deliverycost_id, :pref_id, :delivery_days_id, :user_id, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  
  
  
  end

  has_one_attached :image
  belongs_to :user, foreign_key: 'user_id'

  
  belongs_to :category
  belongs_to :item_status
end
