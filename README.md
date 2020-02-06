# README

## userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|user_name|string|null: false|
|password|string|null: false|
### Association
- has_many :groups_users
- has_many :message
- has_many  :groups,  through:  :groups_users

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
|user_name|string|null: false|
### Association
- has_many :groups_users
- has_many :message
- has_many  :user,  through:  :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
