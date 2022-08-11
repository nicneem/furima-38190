require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before do
    @item = FactoryBot.build(:item)
  end

  describe 'ユーザー出品投稿' do
    context '出品投稿できるとき' do
      expect(@item).to be_valid

    context '出品投稿できないとき' do
      it 'imageが空では登録できない' do
        @user.image = ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Image can't be blank")
      end

      it 'product_name が空では登録できない' do
        @user.product_name= ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Product name can't be blank")
      end
    
      it 'product_descriptionが空では登録できない' do
        @user.product_description = ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Product description can't be blank")
      end

      it 'Commodity_conditionが空では登録できない' do
        @user.commodity_condition= ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Commodity condition can't be blank")
      end
    
      it 'imageが空では登録できない' do
        @user.image = ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Image can't be blank")
      end

      it 'product_name が空では登録できない' do
        @user.product_name= ''
        @user.valid?
        expect(@item.errors.full_messages).to include ("Product name can't be blank")
      end
    end
