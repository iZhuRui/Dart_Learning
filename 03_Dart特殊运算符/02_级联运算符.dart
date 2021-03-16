import '../01_Dart基本语法/02_变量声明.dart';

main(List<String> args) {
  // var p = Person();
  // p.name = 'why';
  // p.eat();
  // p.run();

  //  联级运算符
  var p = Person()
            ..name = 'why'
            ..eat()
            ..run();
}

class Person {
  String name;
  
  void run(){
    print('running');
  }

  void eat(){
    print('eating');
  }
}