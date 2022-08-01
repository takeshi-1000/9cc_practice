#!/bin/bash

assert() {
 expected="$1"
 input="$2"

 ./9cc "$input" > tmp.s # コンパイラの実行バイナリ(9cc)に第二引数を与えて、その結果をアセンブリファイルとして出力
 cc -o tmp tmp.s
 ./tmp
 actual="$?"

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
