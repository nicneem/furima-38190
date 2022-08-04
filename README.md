# README




## users テーブル
| Column                 | Type   | Options                 |
| ---------------------- | ------ | ----------------------- |
| nickname               | string | null: false             |
| email                  | string | null: false, :unique    |
| encrypted_password     | string | null: false             |
| name                   | string | null: false             |
| your_name_kana         | string | null: false             |
| date_of_birth          | date   | null: false             |
### Association

- has_many :products 
- has_many :purchases

## products テーブル

| Column                           | Type       | Options                        |
| -------------------------------- | ---------- | ------------------------------ |
| burden_of_shipping_charges_id    | integer    | null: false                    |
| shipping_area_id                 | integer    | null: false                    |
| days_to_ship_id                  | integer    | null: false                    |
| price                            | integer    | null: false                    |
| seller                           | string     | null: false                    |
| user                             | references | null: false, foreign_key: true |
### Association

- belongs_to :user
- belongs_to :purchases

## purchases テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| shipping_address      | references | null: false, foreign_key: true |
| product               | references | null: false, foreign_key: true |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :user
- has_one :shipping address

## shipping addresses テーブル

| Column            | Type       | Options                        |
| ------------------| ---------- | ------------------------------ |
| payment_amount    | string     | null: false                    |
| post_code         | string     | null: false                    |
| prefectures_id    | integer    | null: false                    |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     |                                |
| phone_number      | string     | null: false                    |


### Association

- has_many :products
- has_one  :purchase

