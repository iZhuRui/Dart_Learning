main(List<String> args) {
  //  基础for循环
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  //  2.遍历数组
  var names = ['why', 'abc', 'cba'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  for (var name in names) {
    print(name);
  }
}