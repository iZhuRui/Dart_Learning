main(List<String> args) {
  //1.明确的声明
  String name = "why";

  //2.类型推导(var/final/const)
  //类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确的类型
  //2.1 var声明变量
  var age = 20;
  // age = "jjj";

  //2.2 final声明常量
  final height = 4.44;
  // height = 3;

  //2.3 const声明常量
  const address = "北京";
  // address = "深圳";

  //2.4 final和const的区别
  //  const必须赋值 常量值（编译期间需要有一个确定的值）
  //  final可以通过计算/函数获取一个值(运行期间来确定一个值)
  // const date1 = DateTime.now();写法错误
  final date2 = DateTime.now();

  //  final用于更多一点
  // final p1 = Person("why");
  // final p2 = Person("why");
  // print(identical(p1,p2));

  //  dart2.0之后，const可以省略
  const p1 = const Person("why");
  const p2 = const Person("why");
  const p3 = const Person("reason");
  print(identical(p1, p2));
  print(identical(p2, p3));
}

// class Person {
//   String name;

//   Person(String name) {
//     this.name = name;
//   }
// }

class Person {
  final String name;
  const Person(this.name);
}
