require 'rails_helper'

RSpec.describe OrdersForm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


  before do
    @user = FactoryBot.create(:user)
    @item = FactoryBot.create(:item)
    @orders_form = FactoryBot.build(:orders_form, user_id: @user.id, item_id: @item.id)
    
    sleep 0.1
  end
  

  describe 'ユーザー商品購入機能' do
    context '商品購入できるとき' do
      it '正常に購入できる' do
      expect(@orders_form).to be_valid
    end
   
    it 'building_nameは空でも保存できること' do
      @orders_form.building_name = nil
      expect(@orders_form).to be_valid
    end 
   
    it "tokenがあれば保存ができること" do
      expect(@orders_form).to be_valid
    end
  end



   context '商品購入できないとき' do
 
     it "tokenが空では登録できないこと" do
        @orders_form.token = nil
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include("Token can't be blank")
      end
  
      
      it 'post_codeが空では投稿できない' do
        @orders_form.post_code = ''
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Post code can't be blank")
      end

      it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
        @orders_form.post_code = '1234567'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Post code 例）123-4567")
      end

      it 'shipping_area_idが空では投稿できない' do
        @orders_form.shipping_area_id = ''
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Shipping area can't be blank")
      end


      it 'municipalitiesが空では投稿できない' do
        @orders_form.municipalities= ''
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Municipalities can't be blank")
      end

      it 'addressが空では投稿できない' do
        @orders_form.address = ''
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Address can't be blank")
      end

      it 'phone_numberが空では投稿できない' do
        @orders_form.phone_number= ''
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Phone number can't be blank")
      end

      it '電話番号が10桁以下では投稿できない' do
        @orders_form.phone_number= '090123456'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Phone number is invalid")
      end
      
      it '電話番号が11桁以上では投稿できない' do
        @orders_form.phone_number= '0901234567891'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Phone number is invalid")
      end

      it '電話番号に半角数字以外が含まれている場合は保存できない' do
        @orders_form.phone_number= '!!&%#'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Phone number is invalid")
      end

      it '配送元の地域に「---」が選択されている場合は出品できない' do
        @orders_form.shipping_area_id = '1'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Shipping area can't be blank")
      end
      
      it '電話番号に半角数字以外が含まれている場合は購入できない' do
        @orders_form.phone_number= '&???!!%&$#$'
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Phone number is invalid")
      end

      it 'userが紐付いていなければ購入できない' do
        @orders_form.user_id= nil
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("User can't be blank")
      end

      it 'itemが紐付いていなければ購入できない' do
        @orders_form.item_id = nil
        @orders_form.valid?
        expect(@orders_form.errors.full_messages).to include ("Item can't be blank")
      end
    end
  end
end
