
main(List<String> args) {
  var p = Person('jack');

  print(p.age);
}

class Person {
  String name;
  int age;

  // Person(this.name) : age = 90;

  //  构造函数的重定向
  Person(String name): this._internal(name, 70);

  Person._internal(this.name, this.age);
}