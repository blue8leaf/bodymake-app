# Body make-up

URL: https://body-make-up.herokuapp.com/ 

テストアカウント ID: rarara@rarara PW: rarara000

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
#### トップ画面
[![Image from Gyazo](https://i.gyazo.com/7c56ffe98d90440fe3be79bd2f225c84.gif)](https://gyazo.com/7c56ffe98d90440fe3be79bd2f225c84)

#### 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/7c9f888c90e609088f00a98969d1eb6e.gif)](https://gyazo.com/7c9f888c90e609088f00a98969d1eb6e)

#### ログイン画面
[![Image from Gyazo](https://i.gyazo.com/32464a0b4f8b883d1782bf78e1fc33ff.png)](https://gyazo.com/32464a0b4f8b883d1782bf78e1fc33ff)

#### 1週間分の記録
[![Image from Gyazo](https://i.gyazo.com/67a97d3a8fc4787622fb03b59c074906.gif)](https://gyazo.com/67a97d3a8fc4787622fb03b59c074906)

#### グラフ
[![Image from Gyazo](https://i.gyazo.com/eba06cc8c1a1c5e44c32dd9c073e7fc5.gif)](https://gyazo.com/eba06cc8c1a1c5e44c32dd9c073e7fc5)

#### 今日の記録
[![Image from Gyazo](https://i.gyazo.com/bdf2fafb96a75aeb611fb0ffb39bdf37.gif)](https://gyazo.com/bdf2fafb96a75aeb611fb0ffb39bdf37)

#### マイページ
[![Image from Gyazo](https://i.gyazo.com/c53f5a52f8223a5b3ae5a8b6c72cdbb5.png)](https://gyazo.com/c53f5a52f8223a5b3ae5a8b6c72cdbb5)

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