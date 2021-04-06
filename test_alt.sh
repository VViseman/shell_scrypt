#!/bin/sh

#for file in `\find . -maxdepth 2 -type f`; do
#echo $file >> out
#done

test=AAA
echo test
echo $test

read ttt
echo $ttt

read -p "Year  :" YYYY
read -p "Month :" MM
read -p "Day   :" DD
echo "-----------"
echo $YYYY
echo $DD
echo $MM

#変数と文字列を連結した文字列でコマンドとしてプロンプトが受け付けてくれるか。
echo ${YYYY}_${MM}_${DD}_tcp_port_scan.txt

#ユーザからのy or nの入力待ち
#ここでの条件は「testという変数にAAAという文字列が格納されているか」
if [ $test = "AAA" ]; then
  read -p "ok? (y/N): " yn
  case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac

  test=BBB
  echo $test

  #コマンドが正常終了したか
  if [ $? = 0 ]; then
    echo "echoは正常終了"
  else
    echo "echoは異常終了"
  fi

fi

