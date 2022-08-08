class Area < ApplicationRecord
  class Genre < ActiveHash::Base
    self.data = [
      { id: 1, item_status: '---' },
      { id: 2, item_status: '北海道' },
      { id: 3, item_status: '青森' },
      { id: 4, item_status: '岩手' },
      { id: 5, item_status: '宮城' }
      { id: 6, item_status: '秋田' },
      { id: 7, item_status: '山形' }
      { id: 8, item_status: '福島' },
      { id: 9, item_status: '茨城' },
      { id: 10, item_status: '栃木' },
      { id: 11, item_status: '群馬' },
      { id: 12, item_status: '埼玉' }
      { id: 13, item_status: '千葉' },
      { id: 14, item_status: '東京' }
      { id: 15, item_status: '神奈川' },
      { id: 16, item_status: '新潟' },
      { id: 17, item_status: '富山' },
      { id: 18, item_status: '石川' },
      { id: 19, item_status: '福井' }
      { id: 20, item_status: '山梨' },
      { id: 21, item_status: '長野' } 
      { id: 22, item_status: '岐阜' },
      { id: 23, item_status: '静岡' },
      { id: 24, item_status: '愛知' },
      { id: 25, item_status: '三重' },
      { id: 26, item_status: '滋賀' }
      { id: 27, item_status: '京都' },
      { id: 28, item_status: '大阪' }
      { id: 29, item_status: '兵庫' },
      { id: 30, item_status: '奈良' },
      { id: 31, item_status: '和歌山' },
      { id: 32, item_status: '鳥取' },
      { id: 33, item_status: '島根' }
      { id: 34, item_status: '岡山' },
      { id: 35, item_status: '広島' }
      { id: 36, item_status: '山口' },
      { id: 37, item_status: '徳島' },
      { id: 38, item_status: '香川' },
      { id: 39, item_status: '愛媛' },
      { id: 40, item_status: '高知' }
      { id: 41, item_status: '福岡' },
      { id: 42, item_status: '佐賀' } 
      { id: 43, item_status: '長崎' }
      { id: 44, item_status: '熊本' },
      { id: 45, item_status: '大分' }
      { id: 46, item_status: '宮崎' },
      { id: 47, item_status: '鹿児島' }
      { id: 48, item_status: '沖縄' },
     
    ]
  
    include ActiveHash::Associations
    has_many :items
  end
end