FactoryBot.define do
  factory :item do

   product_name                     {"商品名"}
   product_description              {"商品説明"}
   category_id                      {3}
   commodity_condition_id           {3}
   burden_of_shipping_charges_id    {3}
   shipping_area_id                 {3}
   days_to_ship_id                  {3}
   association :user
   price                            {1000}
  
   after(:build) do |item|
    item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end
  end
end
