main(List<String> args) {
  //  1.创建person对象
  var p = Person.withNameAgeHeight('jack', 18, 1.99);
  print(p.name);

  var p1 = Person.fromMap({
    "name":"jack",
    "age":19,
    "height":1.99
  });
  print(p1);

  //  2.Object和dynamic的区别
  //  默认情况下所有的类都继承自Object
  //  父类引用指向子类对象 
  // Object obj = "why";
  // print(obj.substring(1));

  // dynamic明确声明，dynamic是一种类型；var是类型推导
  dynamic obj = "why";
  print(obj.substring(1));

  //  Object和dynamic
  //  Object调用方法时，编译时会报错
  //  dynamic调用方法时，编译时不报错，但是运行时会存在安全隐患
}

class Person {
  String name;
  int age;
  double height;

  //  不能写两个构造函数，dart中没有重载
  // Person(this.name, this.age);
  Person(this.name, this.age, {this.height});

  //  命名构造函数
  Person.withNameAgeHeight(this.name,this.age,this.height);
  
  Person.fromMap(Map<String, dynamic> map){
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  //  重写tostring
  @override
  String toString() {
    return "$name $age $height";
  }
}