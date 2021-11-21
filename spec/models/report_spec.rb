require 'rails_helper'

RSpec.describe Report, type: :model do
  before do
    @report = FactoryBot.build(:report)
    sleep 0.1
  end

  describe '今日の体重の作成' do
    context '今日の体重を登録できる場合' do
      it '正しく入力されていれば登録できる' do
        expect(@report).to be_valid
      end
      it '体脂肪は空でも購入できる' do
        @report.body_fat = ''
        expect(@report).to be_valid
      end
      it 'バストは空でも購入できる' do
        @report.body_bust = ''
        expect(@report).to be_valid
      end
      it '二の腕は空でも購入できる' do
        @report.body_arm = ''
        expect(@report).to be_valid
      end
      it 'ウエストは空でも購入できる' do
        @report.body_west = ''
        expect(@report).to be_valid
      end
      it '下腹は空でも購入できる' do
        @report.body_belly = ''
        expect(@report).to be_valid
      end
      it 'ヒップは空でも購入できる' do
        @report.body_hip = ''
        expect(@report).to be_valid
      end
      it '太ももは空でも購入できる' do
        @report.body_thigh = ''
        expect(@report).to be_valid
      end
      it 'ふくらはぎは空でも購入できる' do
        @report.body_calf = ''
        expect(@report).to be_valid
      end
      it '足首は空でも購入できる' do
        @report.body_ankle = ''
        expect(@report).to be_valid
      end
    end
    context '今日の体重を登録できない場合' do
      it '体重が空では登録できない' do
        @report.body_weight = ''
        @report.valid?
        expect(@report.errors.full_messages).to include("体重を入力してください")
      end
      it '日付が空では登録できない' do
        @report.registration_date = ''
        @report.valid?
        expect(@report.errors.full_messages).to include("今日の日付を入力してください")
      end
      it '画像が添付されていないと登録できない' do
        @report.image = nil
        @report.valid?
        expect(@report.errors.full_messages).to include("画像を入力してください")
      end
      it '体重が半角文字列でないと登録できない' do
        @report.body_weight = '５０'
        @report.valid?
        expect(@report.errors.full_messages).to include("体重は不正な値です")
      end
      it '体脂肪が半角文字列でないと登録できない' do
        @report.body_fat = '２８．８'
        @report.valid?
        expect(@report.errors.full_messages).to include("体脂肪は不正な値です")
      end
      it 'バストが半角文字列でないと登録できない' do
        @report.body_bust = '７８．９'
        @report.valid?
        expect(@report.errors.full_messages).to include("バストは不正な値です")
      end
      it '二の腕が半角文字列でないと登録できない' do
        @report.body_arm = '２６．５'
        @report.valid?
        expect(@report.errors.full_messages).to include("二の腕は不正な値です")
      end
      it 'ウエストが半角文字列でないと登録できない' do
        @report.body_west = '６９．１'
        @report.valid?
        expect(@report.errors.full_messages).to include("ウエストは不正な値です")
      end
      it '下腹が半角文字列でないと登録できない' do
        @report.body_belly = '７７．１'
        @report.valid?
        expect(@report.errors.full_messages).to include("下腹は不正な値です")
      end
      it 'ヒップが半角文字列でないと登録できない' do
        @report.body_hip = '８２．３'
        @report.valid?
        expect(@report.errors.full_messages).to include("ヒップは不正な値です")
      end
      it '太ももが半角文字列でないと登録できない' do
        @report.body_thigh = '５３．２'
        @report.valid?
        expect(@report.errors.full_messages).to include("太ももは不正な値です")
      end
      it 'ふくらはぎが半角文字列でないと登録できない' do
        @report.body_calf = '３２．４'
        @report.valid?
        expect(@report.errors.full_messages).to include("ふくらはぎは不正な値です")
      end
      it '足首が半角文字列でないと登録できない' do
        @report.body_ankle = '１８．２'
        @report.valid?
        expect(@report.errors.full_messages).to include("足首は不正な値です")
      end
      it 'userが紐付いていないと登録できないこと' do
        @report.user = nil
        @report.valid?
        expect(@report.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
