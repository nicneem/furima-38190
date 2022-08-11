
class DaysToShip < ActiveHash::Base
  self.data = [
    { id: 1, item_status: '---' },
    { id: 2, item_status: '1~2日で発送' },
    { id: 3, item_status: '2~3日で発送' },
    { id: 4, item_status: '4~7日で発送' },
   
  ]

  include ActiveHash::Associations
  has_many :items
end