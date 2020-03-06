# README

# Chat-Space DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :groups_users
- has_many :groups, through: :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|text|text|null: false|
|image|text||
|created_at|datetime|null: false|
### Association
- belongs_to :users
- belongs_to :groups

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|integer|null: false|
### Association
- has_many :groups_users
- has_many :users, through: :groups_users

## group_userテーブル
|Column|Type|Options|
|------|----|-------|
|group_id|integer|null: false|
|user_name|integer|null: false|
### Association
- belongs_to :user
- belongs_to :group