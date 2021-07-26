# README

謝メというメールを自動生成するシステムです。

railsを使用しています。  
  

# URL  
> メールボックス(letter_opener)  
> http://localhost:3000/letter_opener  

> home  
> http://localhost:3000/

# TODO

* ログインメールの整備  
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
↓  
$ docker-compose run web rails db:migrate　　　# migration  

# 開発するときのコマンド  
  
*コンテナ起動  
$ docker-compose -d up　　
  
*最新の状態をpull  
$ git pull origin HEAD  

railsのコマンドを打つ  
$ docker-compose exec web COMMAND  
  
コンテナ停止  
$ docker-compose stop 
  
railsのデバッグ  
$ docker attach ーコンテナIDー  
　　
# GIT

$ git status   
↓  
$ git add .    
↓  
$ git commit -m "message"  
↓  
$ git push origin HEAD   

