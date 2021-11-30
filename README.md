# Body make-up

URL: https://body-make-up.herokuapp.com/ 

[![Image from Gyazo](https://i.gyazo.com/76d4cfbc24ab92927687374a0e165c66.png)](https://gyazo.com/76d4cfbc24ab92927687374a0e165c66)

<br>

## サービス概要
身体の気になる部分のサイズを管理することで、見た目に特化してダイエットを進めていくサービスです！

<br>

## Body make-upについて

#### 登場人物
体重だけではなく、見た目やスタイルも引き締めてダイエットをしていきたい方

#### ユーザーが抱える問題
- 見た目やスタイルにこだわってダイエットしたい方
- リバウンドを繰り返して、しまりのない身体になってしまっている方

#### 解決方法
たくさんの入力項目があります！<br>
項目【 体重・体脂肪・バスト・二の腕・ウエスト・下腹・ヒップ・太もも・ふくらはぎ・足首 】<br>
また、体重以外は任意入力のため、自分の好みでサービスを使用できます。

<br>

## 使用画面と機能
#### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/65d685e1b39aadc28632cc02012ec969.gif)](https://gyazo.com/65d685e1b39aadc28632cc02012ec969)

#### ログイン画面
[![Image from Gyazo](https://i.gyazo.com/5c283eed4e338680fb4e98820f3ad016.gif)](https://gyazo.com/5c283eed4e338680fb4e98820f3ad016)

#### 今日の記録
[![Image from Gyazo](https://i.gyazo.com/275af20fefd47f4934c38b522ae442c7.gif)](https://gyazo.com/275af20fefd47f4934c38b522ae442c7)

#### グラフ
[![Image from Gyazo](https://i.gyazo.com/eba06cc8c1a1c5e44c32dd9c073e7fc5.gif)](https://gyazo.com/eba06cc8c1a1c5e44c32dd9c073e7fc5)

#### 1週間分の記録
[![Image from Gyazo](https://i.gyazo.com/84e3a432500e5c9b8063f558afa5331f.gif)](https://gyazo.com/84e3a432500e5c9b8063f558afa5331f)

<br>

## 使用技術
- Ruby 2.6.5
- Rails 6.0.4.1

#### インフラ
- AWS
  - S3

#### Gem
- devise（ユーザー管理）
- omniauth-rails_csrf_protection(SNS認証)
- rspec-rails(テスト)
- factory_bot_rails(ダミーのインスタンスをまとめる)
- faker(ランダムな値を生成)
- active_hash(カテゴリー)
- mini_magick(ImageMagickをRubyで扱う)
- image_processing(画像サイズを調整)
- chartkick(グラフ)
- groupdate(更新日時を取得)
- rails-i18n(日本語翻訳)
- omniauth(SNSアカウントを用いて登録、ログイン)
- omniauth-google-oauth2(Googleのomuniauth)
- omniauth-rails_csrf_protection(CSRF脆弱性対策)


## ER図
![app](https://user-images.githubusercontent.com/86353443/141245815-b03b86ce-0070-45bc-9e8b-3b4f903280f9.png)