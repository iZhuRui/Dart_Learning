main(List<String> args) {
  //  1.定义字符串
  var str1 = 'abc';
  var str2 = "abc";
  var str3 = """
  abc
  cba
  nba
  """;

  //  2.字符串和表达式拼接
  var name = "why";
  var age = 10;
  var height = 1.99;

  //  强调：${变量}，那么{}可以省略
  // var message1 = "my name is ${name}, age is ${age}, height is ${height}";
  // var message2 = "my name is ${name}, type is ${name.runtimeType}";

    var message1 = "my name is $name, age is $age, height is $height";
    var message2 = "my name is $name, type is ${name.runtimeType}";

  print(message1);
  print(message2);

}