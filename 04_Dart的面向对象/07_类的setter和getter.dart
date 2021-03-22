import '../03_Dart特殊运算符/02_级联运算符.dart';

main(List<String> args) {
  final p = Person();

  //  直接访问属性
  p.name = 'jack';
  print(p.name);

  p.setName = 'rose';
  print(p.getName);
}

class Person {
  String name;
  // String _name;//加下划线，相对于其他模块就是私有的

  // setter
  // set setName(String name){
  //   this.name = name;
  // }
  set setName(String name) => this.name = name;


  // getter
  // String get getName{
  //   return name;
  // }
  String get getName => name;
}