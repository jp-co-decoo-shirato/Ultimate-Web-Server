私の考えた最強のWebサーバー構成

@thanks
* jwilder/nginx-proxy
* JrCs/docker-letsencrypt-nginx-proxy-companion
* http://qiita.com/hidekuro/items/6f8ee3217b98e93a0276#php-%E3%81%BE%E3%82%8F%E3%82%8A (超参考にした)

# Require
* Docker, Docker-compose

# Setup
1. Need create network. Exec 'create_network.sh'.
2. Edit 'server/docker-compose.yml', 'server/web/vhost.d/example.conf'
3. Exec 'allstart.sh'. (you can exec 'proxy.sh' and 'server.sh'.)
4. All done ! you can put your contents on www/ . Enjoy !

* if you want to use VirtualHost and SSL, edit and put your domain on 'server/docker-compose.yml'.
* if you want to use mysql, initial password has been written 'server/docker-compose.yml'.

--------------------

# 必要なもの
* Docker, Docker-compose

# セットアップ
1. 最初にネットワークを作る必要があるので'create_network.sh'を実行してください。
2. 'server/docker-compose.yml'と'server/web/vhost.d/example.conf'を編集してください。 たぶんそのままでもローカルで動くと思いますし、ドメインを割り当てればwwwにコンテンツを置いて公開もできます。たぶんです。たぶんうごきます。
3. 'allstart.sh'を実行してください。 (もし別々に動かしたいなら'proxy.sh'と'server.sh'でそれぞれ分けて実行できます。)
4. セットアップは完了です！ あなたのコンテンツをwww/に置いてください。

* バーチャルホストとSSLを使うなら、自分のドメインを'server/docker-compose.yml'で書いてください。
* Mysqlデータベースを使う時、初期パスワードは'server/docker-compose.yml'に書いてあります。