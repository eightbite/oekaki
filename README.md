# アプリケーション名

## Oekaki App

# アプリケーション概要

## ユーザー登録、管理
## ルーム作成、管理
## お絵かきチャット

# URL

##

# テスト用アカウント

##

# 利用方法

## 1:ホーム画面より、新規登録もしくはログインボタンをクリックしユーザー登録を行う
## 2:ホーム画面のルーム作成ボタンをクリックしルームを作成する
## 3:お絵かきチャット画面に遷移したらお絵かきを開始する。

# 目指した課題解決

##　高校生位の男女をペルソナとし、お絵かきを暇な時に皆とワイワイやりたいという希望を叶えること

# 洗い出した要件

| 優先順位 | 機能                          | 目的                                     | 詳細                         | ストーリー                                          | 見積もり |
| ------- | ---------------------------- | ---------------------------------------- | --------------------------- | ------------------------------------------------- | ------- |
| 3       | ユーザー管理機能(新規登録機能)    | ユーザー情報を表示するため                   | 新規登録機能                  | 新規登録ボタンを押すと画面が遷移され登録を行うことができる。 | 2時間 |
| 3       | ユーザー管理機能(ログイン機能)    | ユーザー情報を表示するため                   | ログイン機能                  | ログインボタンを押すと画面が遷移され
登録を行うことができる。 |2時間 |
| 3       | ユーザー管理機能(ログアウト機能)   | ログアウトするため                         | ログアウト機能                 | ログイン状態の時にログアウトボタンを
押すとログアウトされる | 1時間 |
| 2       | ユーザー管理機能(Twitter連携機能) | Twitterと連携しログインの手間を省くため      | Twitter連携機能               | 新規登録又はログインボタンを押した後
に、遷移先でTwitterの連携ボタンを押す
ことでTwitterと連携し、ログインが可能 | 8時間 |
| 3       | ルーム管理機能(作成機能)         | ユーザーをルームに振り分けるため              | ルーム作成機能                 | ルーム作成ボタンを押すと、ルームを作成できる。作成するとチャットルーム画面に遷移する。 | 10時間 |
| 3       | ルーム管理機能(参加機能)         | ユーザーがルームに参加するため                | ルーム参加機能                 | 作成済のルームの参加ボタンを押すとチャットルーム画面に遷移する。パスワードが設定されている場合パスワードを知らなければ参加できない。 | 10時間 |
| 3       | ルーム管理機能(退出、削除機能)    | ユーザーがルームから退出、ルームの削除を行うため | ルーム退出、削除機能            | "チャットルーム上で退出ボタンを押すことでルームから退出が可能。
また、ルーム作成者の場合は、削除ボタンが表示されルームの削除が可能" | 5時間 |
| 2       | ルーム管理機能(観戦機能)         | ユーザーがチャットを観戦するため              | ルーム観戦機能                 | 作成済のルームの観戦ボタンを押すとチャットルーム画面に遷移する。パスワードが設定されていても、入力なしで観戦可能 | 3時間 |
| 1       | ルーム管理機能(招待機能)         | ユーザーが別ユーザーを招待するため            | ルーム招待機能                  | チャットルームにて招待ボタンを押すと、招待コードのURLが発行される。 | 8時間 |
| 3       | お絵かき機能                    | お絵かきを目的とするアプリケーションのため     | ペンツール、色切替、消しゴム、消去 | チャットルームにてペンツールの使用、色切替、消しゴムの使用、消去等の操作が可能。 | 20時間 |
| 1       | コメント機能                    | ユーザー同士が意思疎通するため               | コメント機能                   | 参加者、観戦者共にコメントが可能。参加者のコメントには目印がつく。 | 20時間 |

# 実装した機能についてのGIFと説明

##

# 実装予定の機能

## ユーザー管理機能
## ルーム管理機能
## お絵かき機能
## コメント機能

# データベース設計

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

# ローカルでの動作方法