# BookMemo

## Overview
読んだ本の内容をメモできるアプリケーションです。


## Development Environment
  - Ruby '2.5.1'
  - Rails '5.2.3'
  - MySQL '5.6'


## DB Design
### User Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :memos
- has_many :books


### Book Table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|author|string|null: false|
|text|text|null: false|

### Association
- has_many :users
- has_many :memos


## Memo Table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|book|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :book