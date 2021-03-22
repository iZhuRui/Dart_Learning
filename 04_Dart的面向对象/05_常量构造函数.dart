import '../01_Dart基本语法/02_变量声明.dart';

main(List<String> args) {
  const p1 = Person('jack', 19);
  const p2 = Person('jack', 19);

  //  通过常量构造函数创建出来的两个对象，是指向同一个内存，意味着这两个是同一个对象
  print(identical(p1, p2));
}

//  常量构造函数
//  常量构造函数在类里面，一般只有一个
class Person {
  final String name;
  final int age;

  //  dart不支持函数的重载
  // const Person(this.name);//  上面有两个final，这行代码就是错的；person类创建出来的时候，age成员变量必须要有初始化值
  const Person(this.name, this.age); 
}