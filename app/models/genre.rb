class Genre < ActiveHash::Base
  self.data = [
    { id: 1, item_status: '---' },
    { id: 2, item_status: '未使用に近い' },
    { id: 3, item_status: 'やや傷や汚れあり' },
    { id: 4, item_status: '全体的に状態が悪い' }
  ]

  include ActiveHash::Associations
  has_many :items
end