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
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emaiが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに@が含まれない場合登録できない' do
        @user.email = 'test'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが7文字以下であれば登録できない' do
        @user.password = '1234567'
        @user.password_confirmation = '1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it '英字のみのパスワードでは登録できない' do
        @user.password = 'aaaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '数字のみのパスワードでは登録できない' do
        @user.password = '00000000'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '全角文字を含むパスワードでは登録できない' do
        @user.password = '1234AAAA'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '1234abcd'
        @user.password_confirmation = '5678efgh'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'プロフィールが空では登録できない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Profile can't be blank")
      end
      it '身長が空では登録できない' do
        @user.body_height = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Body height can't be blank")
      end
      it '身長が半角数字でなければ登録できない' do
        @user.body_height = '１５４．４'
        @user.valid?
        expect(@user.errors.full_messages).to include("Body height is invalid")
      end
      it '目標体重が空では登録できない' do
        @user.objective_weight = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Objective weight can't be blank")
      end
      it '目標体重が半角数字でなければ登録できない' do
        @user.objective_weight = '４８．８'
        @user.valid?
        expect(@user.errors.full_messages).to include("Objective weight is invalid")
      end
      it '年齢の欄に「年齢」が選択されている場合は登録できない' do
        @user.gender_id = '年齢'
        @user.valid?
        expect(@user.errors.full_messages).to include("Gender 入力されていません")
      end
      it '性別の欄に「性別」が選択されている場合は登録できない' do
        @user.age_id = '性別'
        @user.valid?
        expect(@user.errors.full_messages).to include("Age 入力されていません")
      end
    end
  end
end

