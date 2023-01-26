<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# pixiv.dart

pixivAPIをDart/Flutterで利用するためのパッケージです。

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

### Install

このパッケージは開発中であり、長期的なサポートを想定していないため、[pub.dev](pub.dev)では公開していません。そのため、パッケージを使用するためには`pubspec.yaml`の`dependencies`に以下の記述を追加する必要があります。

```yaml
dependencies:
  pixiv_dart:
    git:
      url: https://github.com/MnyaCat/pixiv_dart
      ref: # バージョンを固定するコミットのハッシュ値を書いてください(例: 0ff847f)。
```

### Retrieving Auth Token

pixivへログインするためには、OAuth認証のアクセストークンを取得する必要があります。  
以下の手順に従って、アクセストークンを取得してください。

1. [`oauth_flow.dart`](./example/oauth_flow.dart)を実行します。
2. 表示されたリンクをブラウザで開きます。
3. DevToolsを開き(Google Chromeの場合はF12)、"Network(ネットワーク)"タブに移動します。
4. "Preserve log(ログを保持)"を有効にし、"Filter"に`callback?`を入力します。
5. pixivへログインしてください。
6. ログインすると、`https://app-api.pixiv.net/web/v1/users/auth/pixiv/callback?state=...&code=...`のようなリクエストが表示されます。`code`パラメーターの値をコピーして、コンソールにペーストし、`Enter`を押してください。

アクセストークンの取得に成功すると、コンソールへ取得したトークンが出力されます。  
アカウント情報をファイルに保存する場合は、引数`--save-account`を付けて実行してください。カレントディレクトリ配下の`user_account.json`に出力されます。  
ここで取得したトークンを利用することで、アカウントにログインできます。誤ってインターネット上にアップロードしないように気をつけてください。

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## LICENSE

Copyright (c) 2023 MnyaCat  
Released under the MIT license  
see [LICENSE file](./LICENSE)
