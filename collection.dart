void main() {
  // Lists
  // array = list

  List names = [1, 2, 3];
  var names2 = [1, 2, 3];
  assert(names == names2);
  printList(names);

  var listSize = names.length;
  print('Length of the lists - $listSize');

  List mixed = ['a', 'b', 1, 2, 3]; // List<dynamic>
  printList(mixed);

  // mutable list
  List<String> collOfNames = ['Aditya', 'Tyagi'];
  printList(collOfNames);

  // immutable list - you cannot modify it at runtime
  List<String> collOfNames2 = const ['Aditya', 'Tyagi'];

  // will throw error here - uncomment below to check error
  // collOfNames2[1] = 'Kapoor';
  printList(collOfNames2);

  // SHALLOW and DEEP COPY of a LIST

  //  SHALLOW COPY
  var a2 = [1, 2, 3];
  var b2 = a2;
  b2[0] = 22;
  print(a2); // changes the source as well

  // DEEP COPY
  var a3 = [1, 2, 3];
  var b3 = [...a2];
  b3[0] = 22;
  print(a3); // doesnt changes the source

  print('-----------------------');

  // SETS
  var sampleSet = {'a', 'b', 'c', 'a'};
  print(sampleSet); // ignored the redundunt 'a'

  // defining a empty set
  var emptySet1 = {}; // not a Set - it is a HashMap
  print(emptySet1.runtimeType);

  var emptySet2 = <String>{}; // this is a Set
  print(emptySet2.runtimeType);

  print('-----------------------');
  // MAPS
  var map1 = {'a': 1, 'b': 22};

  print(map1.runtimeType);
  print(map1['b']);

  // empty map
  var map2 = <String, int>{}; // key = String, value = int
  print(map2.runtimeType);

  var map3 = new Map();
  map3['first'] = 'hello';
  print(map3);
  print(map3['first']);
}

void printList(List list) {
  for (var item in list) {
    print(item);
  }
  print('-----------------------');
}
