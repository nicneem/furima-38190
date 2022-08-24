 class ShippingArea < ActiveHash::Base
    self.data = [
      { id: 1, item_status: '---' },
      { id: 2, item_status: '北海道' },
      { id: 3, item_status: '青森県' },
      { id: 4, item_status: '岩手県' },
      { id: 5, item_status: '宮城県' },
      { id: 6, item_status: '秋田県' },
      { id: 7, item_status: '山形県' },
      { id: 8, item_status: '福島県' },
      { id: 9, item_status: '茨城県' },
      { id: 10, item_status: '栃木県' },
      { id: 11, item_status: '群馬県' },
      { id: 12, item_status: '埼玉県' },
      { id: 13, item_status: '千葉県' },
      { id: 14, item_status: '東京都' },
      { id: 15, item_status: '神奈川県' },
      { id: 16, item_status: '新潟県' },
      { id: 17, item_status: '富山県' },
      { id: 18, item_status: '石川県' },
      { id: 19, item_status: '福井県' },
      { id: 20, item_status: '山梨県' },
      { id: 21, item_status: '長野県' }, 
      { id: 22, item_status: '岐阜県' },
      { id: 23, item_status: '静岡県' },
      { id: 24, item_status: '愛知県' },
      { id: 25, item_status: '三重県' },
      { id: 26, item_status: '滋賀県' },
      { id: 27, item_status: '京都府' },
      { id: 28, item_status: '大阪府' },
      { id: 29, item_status: '兵庫県' },
      { id: 30, item_status: '奈良県' },
      { id: 31, item_status: '和歌山県' },
      { id: 32, item_status: '鳥取県' },
      { id: 33, item_status: '島根県' },
      { id: 34, item_status: '岡山県' },
      { id: 35, item_status: '広島県' },
      { id: 36, item_status: '山口県' },
      { id: 37, item_status: '徳島県' },
      { id: 38, item_status: '香川県' },
      { id: 39, item_status: '愛媛県' },
      { id: 40, item_status: '高知県' },
      { id: 41, item_status: '福岡県' },
      { id: 42, item_status: '佐賀県' }, 
      { id: 43, item_status: '長崎県' },
      { id: 44, item_status: '熊本県' },
      { id: 45, item_status: '大分県' },
      { id: 46, item_status: '宮崎県' },
      { id: 47, item_status: '鹿児島県' },
      { id: 48, item_status: '沖縄県' }
     
    ]
  
    include ActiveHash::Associations
    has_many :items
  end