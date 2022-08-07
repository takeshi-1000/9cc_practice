#!/bin/bash

assert() {
 expected="$1"
 input="$2"

 # 本リポジトリで作成したコンパイラコードの実行バイナリ(9cc)に第二引数を与えて、その結果をアセンブリファイル(tmp.s)として出力
 # 9cc は MakeFile側で、make test.sh を実行することで、生成されるように設定されてある。
 ./9cc "$input" > tmp.s
 
 # 標準のコンパイラ(cc)に、アセンブリファイル(tmp.s)を渡し、実行バイナリ(tmp)を生成
 cc -o tmp tmp.s
 
 # 実行バイナリ(tmp)を実行
 ./tmp
 
 # 直前の実行バイナリを実行した時の出力を、変数actualに渡す
 actual="$?"

 # 
 if [ "$actual" = "$expected" ]; then
   echo "$input => $actual"
 else
   echo "$input => $expected expected, but got $actual"
   exit 1
 fi
}

assert 0 0
assert 42 42
assert 21 "5+20-4"
assert 10 "5 + 9 - 4"

echo OK
