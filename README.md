# Chat-app
![chat-app](https://raw.github.com/wiki/iwama-takahiko/chat-space/images/chatspece.mov.gif)
## 開発背景
* slackのようなチャットアプリを独自で開発してみたいと思い開発を行う。
* チャットでは非同期通信が必要なためjQueryで実装。
* 苦労した点
  * 非同期通信実装。
    * JavaScriptでの非同機通信の概念理解とエラーアンドトライで解決。
  * チャットグループを作り、メッセージを送る機能を追加すること。
    * Groupテーブルを作り、外部キーをつくることで解決。
  * viewの表示方法やデザイン
    * メッセージの表示画面色や、メッセージした画像のサイズ固定などの実装。
  

## 開発環境(system dependencies)
* Ruby 2.3.1
* Rails 5.0.7
* Haml

## DB設計（Datebase initialization)

## messages テーブル
  
| Column | Type | Options | information |
:---:|:---:|:---:|:--:|
| id       | integer | null| 主キー|
| text     | text    |     | 内容  |
| image    | string  |     | 画像  |
| user_id  | integer | null:false,foreign_key: true | 投稿したユーザのID（外部キー）|
| group_id | integer | null:false,foreign_key: true | 送り先のgroupのID(外部キー,index)| 


### Association
 * belongs_to :group
 * belongs_to :user
 
 
 ## Users　テーブル
 
 | Column | Type | Options | infomation|
 :-:|:-:|:-:|:-:|
 | id |integer| |主キー|
 |name|string | null:false,add_index:true|ユーザー名|
 |email|string| null: false,unique:true |メールアドレス|
 
 
 ### Assocition
 * has_many :messages
 * has_many :group,***through: groups_users*** 　 `多数対多数のアソシエーション実装のため`
 
 
## groupsテーブル

| Colunm | Type | Options | infomation |
:-:|:-:|:-:|:-:|
| id  | integer | |主キー    |
| name| string  | |グループ名|


### Assocition
* has_many :messages
* has_many :users, ___through: :groups_users___   `多数対多数のアソシエーション実装のため`


## groups_usersテーブル

| Colunm | Type | Options | infomation |
:-:|:-:|:-:|:-:|
| id      | integer | |主キー    |
| user_id | string  | |外部キー  |
| group_id| string  | |外部キー  |


### Association
* belongs_to :group
* belongs_to :user

