require 'rails_helper'

RSpec.describe User do
  before do
    @user = FactoryBot.build(:user)
    sleep 0.1
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it '入力が正しければ登録できること' do
        expect(@user).to be_valid
      end
      it 'passwordが8文字以上であれば登録できる' do
        @user.password = '1234abcd'
        @user.password_confirmation = '1234abcd'
        expect(@user).to be_valid
      end
      it '性別は空でも購入できる' do
        @user.gender_id = ''
        expect(@user).to be_valid
      end
      it '年齢は空でも購入できる' do
        @user.age_id = ''
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'emaiが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'emailに@が含まれない場合登録できない' do
        @user.email = 'test'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが7文字以下であれば登録できない' do
        @user.password = '1234567'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは不正な値です")
      end
      it '英字のみのパスワードでは登録できない' do
        @user.password = 'aaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません", "パスワードは不正な値です")
      end
      it '数字のみのパスワードでは登録できない' do
        @user.password = '00000000'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません", "パスワードは不正な値です")
      end
      it '全角文字を含むパスワードでは登録できない' do
        @user.password = '1234AAAA'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません", "パスワードは不正な値です")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '1234abcd'
        @user.password_confirmation = '5678efgh'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'プロフィールが空では登録できない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("プロフィールを入力してください")
      end
      it '身長が空では登録できない' do
        @user.body_height = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("身長を入力してください")
      end
      it '身長が半角数字でなければ登録できない' do
        @user.body_height = '１５４．４'
        @user.valid?
        expect(@user.errors.full_messages).to include("身長は不正な値です")
      end
      it '目標体重が空では登録できない' do
        @user.objective_weight = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("目標体重を入力してください")
      end
      it '目標体重が半角数字でなければ登録できない' do
        @user.objective_weight = '４８．８'
        @user.valid?
        expect(@user.errors.full_messages).to include("目標体重は不正な値です")
      end
    end
  end
end

