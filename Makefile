CFLAGS=-std=c11 -g -static

# 9cc: ビルドするファイル(ターゲット)
# 9cc.c: ターゲットに依存するファイル
9cc: 9cc.c

# test: .PHONYで定義されたダミーターゲット
# 9cc.c: ターゲットに依存するファイル
test: 9cc
# ダミーターゲットに対するコマンド
	./test.sh

# test: .PHONYで定義されたダミーターゲット
clean:
# ダミーターゲットに対するコマンド
	rm -f 9cc *.o *~ tmp*

# .PHONY コマンドを使用すると、ターゲットはダミーターゲットとなり、コマンドのみが実行される
# 参考: https://yu-nix.com/archives/makefile-phony/#Makefile%E3%81%AEPHONY%E3%81%A7%E4%BE%BF%E5%88%A9%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%82%92%E6%9B%B8%E3%81%84%E3%81%9F%E3%82%89%E4%B8%96%E7%95%8C%E3%81%8C%E5%A4%89%E3%82%8F%E3%81%A3%E3%81%9F
.PHONY: test clean
