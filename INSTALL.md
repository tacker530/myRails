# myRails

Ruby on Rails7 template

このファイル群はRuby on Rails7 用のテンプレートファイルです。
これを複製して次のコマンドを実行します。

```
docker-compose build

```

```
docker-compose run --rm web rails new . --database=mysql

```

```
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: password
  host: db

```

```
docker-compose build
docker-compose up -d
docker-compose run web rails db:create

```

順調に進んだら、Google chromeやSafariなどのブラウザを開き、リンク欄から「 [http://localhost:3000](http://localhost:3000/) 」を入力します。
