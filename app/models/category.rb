class Category < ActiveHash::Base
    self.data = [
      { id: 1, item_status: '---' },
      { id: 2, item_status: 'メンズ' },
      { id: 3, item_status: 'レディース' },
      { id: 4, item_status: 'ベビー' },
      { id: 5, item_status: 'キッズ' },
      { id: 6, item_status: 'インテリア' },
      { id: 7, item_status: '住まい' },
      { id: 8, item_status: '小物' },
      { id: 9, item_status: '本' },
      { id: 10, item_status: '音楽' },
      { id: 11, item_status: 'ゲーム' },
      { id: 12, item_status: 'おもちゃ' },
      { id: 13, item_status: 'ホビー' },
      { id: 14, item_status: 'グッズ' },
      { id: 15, item_status: '家電' },
      { id: 16, item_status: 'スマホ' },
      { id: 17, item_status: 'カメラ' },
      { id: 18, item_status: 'スポーツ' },
      { id: 19, item_status: 'レジャー' },
      { id: 20, item_status: 'ハンドメイド' },
      { id: 21, item_status: 'その他' }, 
    ]
  
    include ActiveHash::Associations
    has_many :items
  end