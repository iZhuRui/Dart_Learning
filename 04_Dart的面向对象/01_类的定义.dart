main(List<String> args) {
  //  Person()默认构造函数
  var p = Person('why', 19);
}

class Person {
  String name;
  int age;

  // Person(String name, int age){
  //   this.name = name;
  //   this.age = age;
  // }
  //  上面代码可用以下替代
  Person(this.name, this.age);
}