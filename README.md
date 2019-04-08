# 開発環境(system dependencies)
* Ruby 2.3.1
* Rails 5.0.7

# DB設計（Datebase initialization)
# messages テーブル
  
| Column | Type | Options |
:---:|:---:|:---:|
| boby | text |     |
| image | string | 
| user_id | integer | null:false,foreign_key: true |
| group_id | integer | null:false,foreign_key: true|

### Association
 * belongs_to :group
 * belongs_to :user
 
 # Users　テーブル
 
 | Column | Type | Options |
 :-:|:-:|:-:|
 |name|string| null:false,upique: true|
 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
