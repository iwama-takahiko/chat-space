# ChatSpace

## 開発環境(system dependencies)
* Ruby 2.3.1
* Rails 5.0.7

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
* has_many :users, ___through: :groups_users___  多数対多数のアソシエーション実装のため

## groups_usersテーブル

| Colunm | Type | Options | infomation |
:-:|:-:|:-:|:-:|
| id      | integer | |主キー    |
| user_id | string  | |外部キー  |
| group_id| string  | |外部キー  |

### Association
* belongs_to :group
* belongs_to :user

