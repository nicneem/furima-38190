# README




## users テーブル
| Column                 | Type   | Options                 |
| ---------------------- | ------ | ----------------------- |
| nickname               | string | null: false             |
| email                  | string | null: false, :unique    |
| encrypted_password     | string | null: false             |
| first_name             | string | null: false             |
| last_name              | string | null: false             |
| first_name_kana        | string | null: false             |
| last_name_kana         | string | null: false             |
| date_of_birth          | date   | null: false             |

### Association

- has_many :products 
- has_many :purchases

## products テーブル

| Column                           | Type       | Options                        |
| -------------------------------- | ---------- | ------------------------------ |
| product_name                     | string     | null: false                    |
| product_description              | text       | null: false                    |
| category                         | integer    | null: false                    |
| commodity_condition              | integer    | null: false                    |
| burden_of_shipping_charges_id    | integer    | null: false                    |
| shipping_area_id                 | integer    | null: false                    |
| days_to_ship_id                  | integer    | null: false                    |
| price                            | integer    | null: false                    |
| user                             | references | null: false, foreign_key: true |



### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| product       　　     | references | null: false, foreign_key: true |
| user          　　     | references | null: false, foreign_key: true |

### Association

- belongs_to :product
- belongs_to :user
- has_one :shipping_address

## shipping addresses テーブル

| Column            | Type       | Options                        |
| ------------------| ---------- | ------------------------------ |
| post_code         | string     | null: false                    |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     |                                |
| phone_number      | string     | null: false                    |
| purchase          | references | null: false, foreign_key: true |
| shipping_area_id  | integer    | null: false                    |

### Association

- belongs_to :purchase

