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

        it 'カテゴリーに「---」が選択されている場合は出品できない' do
          @item.category_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Category can't be blank")
        end


        it '商品の状態に「---」が選択されている場合は出品できない' do
          @item.commodity_condition_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Commodity condition can't be blank")
        end

        it '配送料の負担に「---」が選択されている場合は出品できない' do
          @item.burden_of_shipping_charges_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Burden of shipping charges can't be blank")
        end


        it '発送元の地域に「---」が選択されている場合は出品できない' do
          @item.shipping_area_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Shipping area can't be blank")
        end

        it '発送までの日数に「---」が選択されている場合は出品できない' do
          @item.days_to_ship_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Days to ship can't be blank")
        end


        it '価格に半角数字以外が含まれている場合は出品できない' do
          @item.price = '!!&%#'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Price is not a number")
        end

        it '価格が300円未満では出品できない' do
          @item.price = '100'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Price must be greater than or equal to 300")
        end

        it '価格が9_999_999円を超えると出品できない' do
          @item.price = '100_000_000'
          @item.valid?
          expect(@item.errors.full_messages).to include ("Price must be less than or equal to 9999999")
        end

        it 'userが紐付いていなければ出品できない' do
          @item.user =  nil
          @item.valid?
          expect(@item.errors.full_messages).to include ("User must exist")
        end
      end 
    end
  end