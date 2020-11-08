# テーブル設計

## usersテーブル

| Column                | Type   | Option     |
| --------------------- | ------ | ---------- |
| nickname              | string | null:false |
| email                 | string | null:false |
| password              | string | null:false |
| password_confirmation | string | null:false |

### Association

- has_one :room

## roomsテーブル

| Column      | Type    | Option     |
| ----------- | ------- | ---------- |
| name        | string  | null:false |
| room_number | string  | null:false |
| password    | string  |            |
| purpose_id  | integer | null:false |

### Association

- belongs_to :user