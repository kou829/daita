# テーブル設計

## users テーブル

| Column     | Type    | Options     |
| --------   | ------  | ----------- |
| nickname   | string  | null: false |
| email      | string  | null: false |
| password   | string  | null: false |
| sex        | integer | null: false |
| age        | integer | null: false |
| profile    | text    | null: false |



### Association

- has_many :agenda
- has_many :comments
- has_many :judgments

## agenda テーブル

| Column     | Type       | Options     |
| ------     | ------     | ----------- |
| title      | string     | null: false |
| catch_copy | text       | null: false |
| user       | references | null: false |


### Association

- belongs_to :users
- has_many :comments
- has_many :judgments

## comments テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| text      | text       | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |
| agenda | references | null: false, foreign_key: true |

### Association

- belongs_to :agendaes
- belongs_to :users

## judgments テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| choice     | string     | null: false |
| user       | references | null: false |
| agenda     | references | null: false |

### Association

- belongs_to :agendaes
- belongs_to :users