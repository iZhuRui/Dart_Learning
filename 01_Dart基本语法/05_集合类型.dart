
/**
 * abstract class List<E> implements EfficientLengthIterable<E>  List实现EfficientLengthIterable这个抽象类，因为dart里没有关键字定义接口，默认情况下，所有的class都是隐式接口；抽象类用来继承较多，接口用来做实现；
 */
main(List<String> args) {
  //  1.列表list
  var names = ['abc', 'cba', 'nba'];
  names.add('abc');
  // names.remove(index);
 
  //  2.集合set(set里元素不能重复；set可用于去重)
  var movies = {'111','222','333'};

  /**
   * Set.from(Iterable elements)
   * Iterable(可迭代的)
   * abstract class Iterable<E> interable是个抽象类
   * abstract class List<E> implements EfficientLengthIterable<E> list实现了EfficientLengthIterable，
   * abstract class EfficientLengthIterable<T> extends Iterable<T> EfficientLengthIterable继承自Iterable
   * 
   * .from返回的是set，.toList转成List
   */
  // names = Set.from(names).toList();//'List<dynamic>' is not a subtype of type 'List<String>'  Set是个泛型，需给个确定的类型
   names = Set<String>.from(names).toList();


  //  3.映射map(类似iOS字典)
  var info = {'name' : 'why', 
  'age' : 18
  };

  print(names);
  print(movies);
  print(info);
}