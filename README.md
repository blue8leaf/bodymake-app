# Body make-up

## サービス概要
身体の気になる部分のサイズを管理することで、見た目に特化してダイエットを進めていくサービスです！

## Body make-upについて

#### 登場人物
体重だけではなく、見た目やスタイルも引き締めてダイエットをしていきたい方

#### ユーザーが抱える問題
- 見た目やスタイルにこだわってダイエットしたい方
- リバウンドを繰り返して、しまりのない身体になってしまっている方

#### 解決方法
体重、体脂肪、バスト、二の腕、ウエスト、下腹、ヒップ、太もも、ふくらはぎ、足首と多岐にわたって入力できる。
また、体重以外は選択して入力するため、自分の好みでサービスを使用できる。

## 使用画面と機能
#### 新規登録画面
<a href="https://gyazo.com/88171f8d6424c64f878866f474a048cf"><img src="https://i.gyazo.com/88171f8d6424c64f878866f474a048cf.gif" alt="Image from Gyazo" width="1000"/></a>

#### ログイン画面
<a href="https://gyazo.com/ff71982081376f41633dad4dba08ecea"><img src="https://i.gyazo.com/ff71982081376f41633dad4dba08ecea.gif" alt="Image from Gyazo" width="1000"/></a>

#### 今日の記録
<a href="https://gyazo.com/275af20fefd47f4934c38b522ae442c7"><img src="https://i.gyazo.com/275af20fefd47f4934c38b522ae442c7.gif" alt="Image from Gyazo" width="1000"/></a>

#### グラフ
<a href="https://gyazo.com/49e6aab939cb68926163dffff064e5e8"><img src="https://i.gyazo.com/49e6aab939cb68926163dffff064e5e8.gif" alt="Image from Gyazo" width="1000"/></a>

#### 1週間分の記録
<a href="https://gyazo.com/351f8787e31eed3be8f4ca3074dfa089"><img src="https://i.gyazo.com/351f8787e31eed3be8f4ca3074dfa089.gif" alt="Image from Gyazo" width="1000"/></a>

#### 見たい日付を選択してその日のみを表示
<a href="https://gyazo.com/4a44d7dc6c4d547e21a70b4ecebd43b7"><img src="https://i.gyazo.com/4a44d7dc6c4d547e21a70b4ecebd43b7.gif" alt="Image from Gyazo" width="1000"/></a>

#### 

## 使用技術
- Ruby 2.6.5
- Rails 6.0.4.1

#### Gem
- devise（ユーザー管理）
- rspec-rails(テスト)
- factory_bot_rails(ダミーのインスタンスをまとめる)
- faker(ランダムな値を生成)
- active_hash(カテゴリー)
- mini_magick(ImageMagickをRubyで扱う)
- image_processing(画像サイズを調整)
- chartkick(グラフ)
- groupdate(更新日時を取得)

## ER図
![app](https://user-images.githubusercontent.com/86353443/141245815-b03b86ce-0070-45bc-9e8b-3b4f903280f9.png)