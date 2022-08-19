FactoryBot.define do
  factory :orders_form do
    
   post_code                    {'123-4567'}   
   municipalities               { '横浜市緑区' }
   address                      { '青山1-1-1' }
   building_name                { '柳ビル103' }       
   phone_number                 { '09012345678' } 
   shipping_area_id             { 3 }
   
  
   
  end
end
