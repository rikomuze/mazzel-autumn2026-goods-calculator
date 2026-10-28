# MAZZEL AUTUMN2026 MERCH グッズ計算機

画像は `images/` フォルダに以下のファイル名で配置しています。

- `touch-jacket-charm.webp`
- `touch-acrylic-stand.webp`
- `zip-up-parka.webp`
- `mazzel-room-pouch.webp`
- `mazzel-room-cardigan.webp`
- `mazzel-room-room-shoes.webp`
- `mazzel-room-knit-bag.webp`
- `mazzel-room-zipper-bag-set.webp`
- `mazzel-room-sticker-set.webp`
- `mazzel-room-random-telop-charm.webp`
- `mazzel-room-art-room-cube.webp`
- `mazzel-room-blanket.webp`

## GitHub Pages
`index.html` と `images/` を同じリポジトリ直下に置いてください。

## キャッシュバスター

内容を更新したら、バージョン番号（`2026.10.28-1` の形式）を上げてください。

```sh
./bump-version.sh 2026.10.29-1
```

`index.html` の `<meta name="app-version">`、画像・アイコン・OGP・manifest の `?v=` がまとめて書き換わります。
公開中のページは開いたとき（ホーム画面から戻ってきたときも）に新しい版を確認し、
入力が空ならそのまま読み直し、入力中なら「更新する」ボタンを出します。
