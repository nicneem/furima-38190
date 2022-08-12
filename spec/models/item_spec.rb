require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @item = FactoryBot.create(:item)
    sleep 0.1 
  end
 
  
  
  describe 'ユーザー出品投稿' do
    context '出品投稿できるとき' do
      it '正常に投稿できる' do
      expect(@item).to be_valid
    end
      it '価格が半角数値であれば登録できる' do
        @item.price = '1234'
        expect(@item).to be_valid
      end
    end


    context '出品投稿できないとき' do
      
      
      it 'imageが空では投稿できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include ("Image can't be blank")
      end

      it 'product_nameが空では投稿できない' do
        @item.product_name= ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Product name can't be blank")
      end
    
      it 'product_descriptionが空では投稿できない' do
        @item.product_description = ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Product description can't be blank")
      end

      it 'category_idが空では投稿できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Category can't be blank")
      end

      it 'Commodity_condition_idが空では投稿できない' do
        @item.commodity_condition_id= ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Commodity condition can't be blank")
      end

      it 'burden_of_shipping_charges_idが空では投稿できない' do
        @item.burden_of_shipping_charges_id= ''
        @item.valid?
        expect(@item.errors.full_messages).to include ("Burden of shipping charges can't be blank")
      end
        
      it 'shipping_area_idが空では投稿できない' do
          @item.shipping_area_id= ''
          @item.valid?
          expect(@item.errors.full_messages).to include ("Shipping area can't be blank")
        end
      
        it 'days_to_ship_idが空では投稿できない' do
          @item.days_to_ship_id = ''
          @item.valid?
          expect(@item.errors.full_messages).to include ("Days to ship can't be blank")
        end
  
        it 'priceが空では投稿できない' do
          @item.price = ''
          @item.valid?
          expect(@item.errors.full_messages).to include ("Price can't be blank")
        end

      end 
    end
  end