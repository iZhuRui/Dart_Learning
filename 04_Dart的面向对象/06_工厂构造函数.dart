main(List<String> args) {
  //  需求：传入相同的name，那么返回的对象是同一个，传入color是相同时，返回的是同一个对象

  // final p1 = Person('jack');
  final p1 = Person.withName('jack');//使用final是为了保证更安全，后期不会指向别的对象
  // final p2 = Person('jack');
  final p2 = Person.withName('jack');

  print(identical(p1, p2));
}

//  普通构造函数会默认返回创建出来的对象
//  工厂构造函数，需要（可以）自己手动的返回一个对象
// class Person {
//   final String name;
//   final String color = 'red';

//   const Person(this.name);
//   const Person(this.color);
// }

//  普通构造函数：会自动返回创建出来的对象，不能手动的返回
//  工厂构造函数最大的特点：可以手动的返回一个对象
//  工厂构造函数会多占内存，但是减少多次创建对象的创建和销毁的过程；整体上是节省内存
class Person {
  String name;
  String color;

  //  把一个属性修饰成static，那么他就是类属性
  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  //  自己有实现构造函数，那么默认构造函数就不会再实现；
  factory Person.withName(String name){
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    }else {
      final p = Person(name, 'default');
      _nameCache[name] = p;//创建的对象保存在里面，本质上是保存的指针
      return p;
    }
  }

  factory Person.withColor(String color){
    if (_colorCache.containsKey(color)) {
      return _colorCache[color];
    }else {
      final p = Person('default', color);
      _colorCache[color] = p;
      return p;
    }
  }

  Person(this.name, this.color);
}