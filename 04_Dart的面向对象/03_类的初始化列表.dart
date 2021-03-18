main(List<String> args) {
  // var p = Person('why',age : 19);
  // print(p);



  var p1 = Person1('jack', age: 90);
  print(p1);
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

  //  : this.age = age ?? 10    称为初始化列表
  //  可以放一些语句，语句之间以“,”进行分割
  //  如果创建对象时，有传入一个age，那么就使用传入的age，如果没有传入age，那么使用一个默认值
  Person(this.name, {int age}) : this.age = age ?? 10{

  }

  @override
  String toString() {
    return '$name $age';
  }
}

const temp = 20;

class Person1 {
  final String name;
  final int age;

  //  此处做初始化，只能传一个确定的值
  //  {this.age = 10}只能做赋值操作
  // Person1(this.name, {this.age = 10}) {

  // }


  //  this.age = temp ?? 40就是一个赋值语句
  // Person1(this.name, {this.age = temp ?? 40}) {

  // }


  //  this.age = temp > 20 ? 30 : 50这种语句可以写在初始化列表里，但是不能写在命名可选参数里去作为一个默认值
  Person1(this.name, {int age}) : this.age = temp > 20 ? 30 : 50 {

  }

  @override
  String toString() {
    return "name is $name, age is $age";
  }
} 