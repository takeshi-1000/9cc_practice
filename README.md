# 9cc_practice

参考: https://www.sigbus.info/compilerbook

## やること

自分が書いたコンパイラのソースコードを既存のCコンパイラ(gccとか)を使用して吐き出したコンパイラの実行バイナリを使って、
自分が書いたコンパイラのソースコードをアセンブリファイルとして出力すること（セルフホスト）を目標としている

gccとかは厳密には、コンパイラドライバではあるので、アセンブリを読むためのアセンブラや、実行バイナリに結合するためのリンカなども含むと思われるが、
complilerbookで取り上げようとしているのは、特にコンパイラの部分であると思われる

![スクリーンショット 2022-07-31 8 12 33](https://user-images.githubusercontent.com/16571394/182003156-e24efe31-e4e6-48f8-be12-3c3d58c1151b.png)

![スクリーンショット 2022-07-31 8 14 10](https://user-images.githubusercontent.com/16571394/182003184-23511ecd-08ec-4208-9f20-7f7e16e832b3.png)

## 環境

virtual box を使用して、Linux ubuntu を mac から起動させて実行
