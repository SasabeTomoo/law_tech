## 製品名
敷金返還を支援するサービス（仮称）

## 製品概要
敷金の返還の通知書の作成支援サービスになります。

## コンセプト
コンセプトは、「司法・法律を身近に」。
弁護士・司法書士に依頼しなくても、調べれば、自分自身で解決できるトラブルは多くあります。
また、紛争の金額が小さいため、弁護士・司法書士に頼むと費用倒れ（費用の方が多くかかる）になるトラブルも多くあります。
このWEBアプリケーションは、このような気持ちを持つ方のために、本人自身でトラブルを解決できることを支援するサイトになります。
まずは、敷金の返還の通知書の作成支援サービスを作ってみます。
なお、本WEBアプリケーションのユーザーは、「敷金を返してもらいたい」と考えている賃借人の立場を想定しています。

## バージョン情報
- Ruby 2.6.5
- Ruby on Rails 5.2.4
- PostgreSQL
- Nginx(Webサーバ)
- unicorn(アプリケーションサーバ)
- RSpec(自動テスト)
- JavaScript
- HTML/CSS
- Bootstrap4

## 機能一覧
システムを構成する機能
1. ユーザログイン関係の機能
2. 通知書・訴状等の入力・保存機能
3. CSV読込み機能（モジュール使用）
4. 計算機能
5. 通知書等の出力機能（pdf又はwordファイルダウンロード機能）
6. 管理者ユーザ機能
7. 問い合わせ機能
8. 管理者機能
9. サーバーの高速化
10. サジェスト機能

## 「就業Termから少なくとも2つ、カリキュラム外から１つ以上」に該当する３つの機能
3. CSV読込み機能（モジュール使用）
5. 通知書等の出力機能（pdf又はwordファイルダウンロード機能）
10. サジェスト機能

## カタログ設計,テーブル定義書,ER図,画面遷移図,ワイヤーフレーム
[要件定義](要件定義.xls)

## 使用予定Gem
- kaminari
- mini_magick
- rspec-rails
- capybara

10/12　笹部
