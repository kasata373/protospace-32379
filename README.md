## users テーブル

| Column     | Type   | Option    |
| ---------- | ------ | --------- |
| email      | string | NOT: NULL |
| password   | string | NOT: NULL |
| name       | string | NOT: NULL |
| proffile   | text   | NOT: NULL |
| occupation | text   | NOT: NULL |
| position   | text   | NOT: NULL |

## prototypes テーブル

| Column     | Type          | Option    |
| ---------- | ------------- | --------- |
| title      | string        | NOT: NULL |
| catch_copy | text          | NOT: NULL |
| concept    | text          | NOT: NULL |
| image      | ActiveStorage | NOT: NULL |
| user       | references    | NOT: NULL |

## comments テーブル

| Column    | Type       | Option    |
| --------- | ---------- | --------- |
| text      | text       | NOT: NULL |
| user      | references | NOT: NULL |
| prototype | references | NOT: NULL |
