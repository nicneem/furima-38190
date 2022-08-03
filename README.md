　# テーブル設計

## users テーブル

| Column                 | Type   | Options                 |
| ---------------------- | ------ | ----------------------- |
| nickname               | string | null: false             |
| email_address          | string | null: false             |
| password               | string | null: false             |
| password_confirmation  | string | null: false             |
| name                   | string | null: false             |
| your_name(kana)        | string | null: false             |
| date_of_birth          | string | null: false             |

### Association

- has_many :products 
- has_many :purchases

## products テーブル

| Column                        | Type       | Options                        |
| ----------------------------- | ---------- | ------------------------------ |
| burden_of_shipping_charges    | string     | null: false                    |
| shipping_area                 | string     | null: false                    |
| days_to_ship                  | string     | null: false                    |
| price                         | string     | null: false                    |
| user                          | references | null: false, foreign_key: true |

### Association

- has_many :shipping_addresses
- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| shipping_address      | references | null: false, foreign_key: true |
| product               | references | null: false, foreign_key: true |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :user
- belongs_to :shipping_address

## shipping_addresses テーブル

| Column            | Type       | Options                        |
| ------------------| ---------- | ------------------------------ |
| payment_amount    | string     | null: false                    |
| post_code         | string     | null: false                    |
| prefectures       | string     | null: false                    |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     | null: false                    |
| phone_number      | string     | null: false                    |


### Association

- has_many :products
- has_one  :purchase