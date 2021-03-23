// Dart中默认情况下，一个dart文件就是一个模块(库文件)
import 'dart:core';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
// 系统的库：import 'dart:库的名字';

main(List<String> args) {
  final num1 = 20;
  final num2 = 30;
  print(min(num1, num2));
}