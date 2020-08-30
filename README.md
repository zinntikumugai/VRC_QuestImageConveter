![auto build](https://github.com/zinntikumugai/VRC_QuestImageConveter/workflows/auto%20build/badge.svg?branch=master)
[![Netlify Status](https://api.netlify.com/api/v1/badges/feb7e53d-8573-4ad8-9cbc-f67f5e24b23f/deploy-status)](https://app.netlify.com/sites/vrc-questimageconveter/deploys)

## なにこれ
VRChat SDK内にある`VRC_Panorama`がQuestで高確率で動かないため、`VideoPlayer`で代用する方法が挙げられたが、各個人で変換するのはめんどいと思うので、公開された画像URLより取得し、動画に変換するやつ  

なぜ`VideoPlayer`なのかとかは[ここらへん](https://vrcworld.wiki.fc2.com/wiki/VRC_Panorama#quest-workaround)参照

## 使い方
1. GitHubとか分からない人
    - [管理者のTwitter](https://twitter.com/uesitananame55)などに声をかけてください
1. 自分で追加する方法
    - `images/getlist.json`に画像ファイル名と画像URLを追加する
    - プルリクを送る

## デバック方法
```bash
docker-compose build
docker-compose up
```