FROM node:18.7-alpine
WORKDIR /app

# package.jsonとyarn.lockをコピー
COPY package.json yarn.lock ./

# 依存関係のインストール
RUN yarn install

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションの実行
CMD ["node", "server.js"]
