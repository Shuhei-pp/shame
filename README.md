# README

謝メというメールを自動生成するシステムです。

railsを使用しています。

# TODO

* signupをメールで行う(devise使用したので調整必須)  
* ログイン、サインアップ時の画面  　
* 講義名1つでテキストボックスが作られているが、開講時間、講義名等で分ける  
* 個人ページ作成

# 環境構築  
  

( *dockerは入っている前提です。* 入ってない場合はダウンロード →https://www.docker.com/)

$ git clone https://github.com/Shuhei-pp/shame_development.git  
↓  
$ docker-compose build　　　　　　　　　　　　# コンテナをビルド  
↓  
$ docker-compose -d up　　　　　　　　　　　　# コンテナの一斉起動  
↓  
$ docker-compose run web rails db:create　　　# db作成  

# 開発するときのコマンド
　　
コンテナ起動　　
$ docker-compose -d up　　

railsのコマンドを打つ
$ docker-compose exec web <command>　　
　　
コンテナ停止　　
$ docker-compose down  

# GIT

$ git status   
↓  
$ git add .    
↓  
$ git commit -m "message"  
↓  
$ git push origin HEAD   

