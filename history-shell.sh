#!/bin/sh

#nmap -p- -Pn -sS {{ URL }} -oN tcp_port_scan.txt

read -p "Year  :" YYYY
read -p "Month :" MM
read -p "Day   :" DD
echo "-----------"
echo $YYYY
echo $DD
echo $MM

echo ${YYYY}_${MM}_${DD}_tcp_port_scan.txt

history > $HOME/Desktop/${YYYY}_${MM}_${DD}_history.txt

#テキストにhistoryの結果が出ない。
#historyコマンドをシェルスクリプトで操作する時はシェルの他の環境変数が必要？

##ユーザからのy or nの入力待ち
##ここでの条件は「testという変数にAAAという文字列が格納されているか」
#if [ $test = "AAA" ]; then
#  read -p "ok? (y/N): " yn
#  case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
#
#  test=BBB
#  echo $test
#
#  #コマンドが正常終了したか
#  if [ $? = 0 ]; then
#    echo "echoは正常終了"
#  else
#    echo "echoは異常終了"
#  fi
#fi
