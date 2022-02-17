# ms-coco-annotation-exploration
ms coco datasetを使った画像アノテーション検出のアプリです。

## 使い方
### docker-compose build
docker-compose buildを行います。
buildするとbullseyeのimageを使ったpythonのimageがビルドされます。

```
docker-compose build
```

### docker-compose up
docker-compose upで起動させます。
docker-composeのyamlにはkeep aliveの設定がされているため、upしても起動しままになります。

### docker-execで入る
dockerにログインします。

```
make docker-exec name="mscoco"
```

### pythonを実行する
dockerの中に入ったらmake executeを実行し、画像を描画します。
描画された画像にはcoco apiによって分析された結果が出力されます。
実行にはms coco datasetから取得したjsonを使用します。
削除してしまったりした場合はmake get-coco-jsonで取得できます。

```
make execute
```

## 分析結果の例

![](doc/454661.jpg)

アノテーションを行う前の画像です。

![](doc/454661_annotated.jpg)

cocoの学習モデルを使用した結果の画像です。
