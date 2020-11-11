require 'rails_helper'
RSpec.describe Room, Type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  
  describe 'ルーム作成機能' do
    context 'ルーム作成がうまくいくとき' do
      it "カラムが全て存在すれば作成できる" do
        expect(@room).to be_valid
      end
    end

    context 'ルーム作成がうまくいかないとき' do
      it "紐づくユーザーが存在しないと作成できない" do
        @room.user = nil
        @room.valid?
        expect(@room.errors.full_messages).to include ("User must exist")
      end
      it "nameが空だと作成できない" do
        @room.name = nil
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
      it "purpose_idが空では作成できない" do
        @room.purpose_id = nil
        @room.valid?
        expect(@room.errors.full_messages).to include("Purpose is not a number")
      end
      it "purpose_idの値が0では作成できない" do
        @room.purpose_id = 0
        @room.valid?
        expect(@room.errors.full_messages).to include ("Purpose must be other than 0")
      end
    end
  end
end