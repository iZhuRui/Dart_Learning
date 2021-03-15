main(List<String> args) {
  final count = sum(2, 3);
  print(count);
}

//  返回值的类型可以省略（开发中不推荐）
int sum(int num1, int num2) {
  return num1 + num2;
}