i81n
====

I81n is 'Internationalizaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaation'.

I18n の YAML ファイルを編集するのって面倒ですよね！
I81n を使うと（とりあえずは） YAML ファイルに翻訳テキストを書かなくても良くなります！

インストール
----

次のようにして gem コマンドでインストールすることができます。

    gem install i81n

Rails をお使いの際は Gemfile に以下を追記して bundle install を実行してください。

    gem 'i81n'

I18n.backend を以下のように設定してください（Rails では config/initializers/i81n.rb 等に書いておくとよいでしょう）。

    I18n.backend = I18n::Backend::I81n.new(
      :ignore => /^(helpers\.|activerecord\.|attributes\.|errors\.)/
    )

使い方
----

Rails のビューにメッセージを埋め込む場合、こんな感じで書けます。

    <%= t('こんにちは！') %>

サービスを英語対応させたくなった時に翻訳ファイル（en.yml）を書けばいいのです。
その際、翻訳ファイルは以下のようになるでしょう。

    en:
      "こんにちは！": "Hello!"

### もうちょっと詳しく

以下のような YAML ファイル（ja.yml）があった場合、

    ---
    ja:
      foo: フー

このような出力になります。

    require 'i81n'
    I18n.backend = I18n::Backend::I81n.new
    I18n.config.locale = :ja
    I18n.t('foo') #=> 'フー'
    I18n.t('バー') #=> 'バー'
    I18n.t('%{n}個', :n => 10) #=> '10個'

詳細
----

I18n は I18n::Backend::Simple を拡張することによって上記の機能を実現しています。

コピーライト
----

Copyright (c) 2011 jugyo. See LICENSE.txt for further details.
