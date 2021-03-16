main(List<String> args) {
  //  ??=:
  //  当原来的变量有值时，那么??=不执行
  //  原来的变量为null，那么贱赋值给这个变量
  // var name = 'why';
  // var name = null;
  // name ??= 'lilei';
  // print(name);


  //  ??:
  //  ??前面的数据有值，那么就是用??前面的数据
  //  ??前面的数据为null，那么就使用后面的值
  // var name = 'why';
  var name = null;
  var temp = name ?? 'lilei';
  print(temp);
}