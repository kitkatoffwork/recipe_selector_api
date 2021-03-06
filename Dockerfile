# ベースイメージ
FROM golang:1.13.7-buster

# プロジェクトルートに移動
WORKDIR /go/src/api/

# Air インストール
RUN curl -fLo /go/bin/air https://git.io/linux_air \
  && chmod +x /go/bin/air

EXPOSE 3001

# コンテナ実行時のデフォルトを設定
# ライブリロードを実行
CMD air
