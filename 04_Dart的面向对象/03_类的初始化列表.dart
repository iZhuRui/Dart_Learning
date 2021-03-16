main(List<String> args) {
  var p = Person('why',age : 19);
  print(p);
}

class Person {
  //  1.
  // String name;
  // int age;
  //  执行到{}说明该函数已经初始化完毕了
  // Person(this.name){
  //   this.age = 10;
  // }

  //  2.
  // final String name;
  // final int age;

  // //  执行到{}说明该函数已经初始化完毕了
  // Person(this.name){
  //   //  age没有初始化值
  //   this.age = 10;
  // }

  //3.
  final String name;
  final int age;

  //  初始化列表
  Person(this.name, {int age}) : this.age = age ?? 10{

  }

  @override
  String toString() {
    return '$name $age';
  }
}