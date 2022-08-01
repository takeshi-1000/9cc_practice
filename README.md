# 9cc_practice

参考: https://www.sigbus.info/compilerbook

## やること

自分が書いたコンパイラのソースコードを既存のCコンパイラ(cc)を使用して生成されたコンパイラの実行バイナリを使って、
自分が書いたコンパイラのソースコードをアセンブリファイルとして出力すること（セルフホスト）を目標としている

<img width="586" alt="スクリーンショット 2022-08-01 10 42 39" src="https://user-images.githubusercontent.com/16571394/182056658-4a674cd8-9973-4bdb-bbd3-cfef9d8b42e0.png">

<img width="568" alt="スクリーンショット 2022-08-01 10 42 47" src="https://user-images.githubusercontent.com/16571394/182056662-e90ea5db-1016-4725-9375-3cddacc4f7b9.png">

### 小ネタ 

既存のコンパイラ自身も、今回作成するリポジトリのソースコードのように、別のコンパイラを使用してinputとしてそれ自体のコンパイラソースコードを入れて、バイナリとして吐き出された。
そのように遡っていくと、コンパイラの起源に行き着くかもしれない

<img width="864" alt="スクリーンショット 2022-08-01 11 03 34" src="https://user-images.githubusercontent.com/16571394/182058458-06512d3b-08f8-4116-889e-26deffd7caf1.png">

参考: https://www.sigbus.info/compilerbook#%E6%9C%AC%E6%9B%B8%E3%81%AE%E6%83%B3%E5%AE%9A%E3%81%99%E3%82%8B%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83:~:text=%E3%82%B3%E3%83%A9%E3%83%A0%3A%20%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%A9%E3%82%92%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%AB%E3%81%99%E3%82%8B%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%A9




## 環境

virtual box を使用して、Linux ubuntu を mac から起動させて実行
