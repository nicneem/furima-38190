FactoryBot.define do
  factory :item do
    

   image                         {"写真"}
   product_name                  {"商品名"}
   product_description           {"商品説明"}
   category                      {"カテゴリー"}
   commodity_condition           {"状態"}
   burden_of_shipping_charges    {"12345"}
   shipping_area                 {"北海道"}
   days_to_ship                  {"2020/01/01"}
   user                          {"山田"}
   price                         {"1000円"}
  
  end
end
