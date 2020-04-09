// this is implicitly imported
// import 'dart:core';

import 'dart:io';

void main() {
  var firstName = 'Aditya';
  String lastName = 'Tyagi';

  print(firstName + ' ' + lastName);
  print('-------------------------');

  stdout.writeln('What is your name ?');
  String name = stdin.readLineSync();
  print('My Name is $name');

  print('-------------------------');

  int amount1 = 1000;
  var amount2 = 2000;

  print('Amount 1 = $amount1 and Amount 2 = $amount2 \n');

  String fName = 'Aditya';
  var lName = 'Tyagi';

  print('My name is $fName $lName \n');

  bool isTrue1 = true;
  var isTrue2 = false;

  print('The values of two booleans are $isTrue1 and $isTrue2 \n');

  double largeAmount = 100.11;
  var largeAmount2 = 100.22;

  print(
      'Two ways to print a floating number are: $largeAmount and $largeAmount2 \n');

  dynamic weakVariable = 'This is a Weak Variable';

  print('$weakVariable is a string \n');

  weakVariable = 44;

  print('$weakVariable is a int');

  print('-------------------------');

  var a = 'It\'s a good day';
  var b = "It's a good day";
  var c = r'This is a raw string. Not even \n gets evaluated';
  print(a);
  print(b);
  print(c);

  print('-------------------------');

  var d = '''
    Hey, this is a multiline string
    And I cannot do anything about it.
    ''';

  var e = """
    this is another multiline string.
    This is pretty cool.
    """;

  print(d);
  print(e);

  print('-------------------------');

  // String to int
  var g = int.parse('2');
  print('String to int $g \n');
  assert(g == 2);

  var h = double.parse('10.11');
  print('String to double $h \n');
  assert(h == 10.11);

  print('-------------------------');

  const i = 100; // int constant
  print(i);
  print(i.runtimeType); // to check the data type at runtime

  int num;
  print(num);
}
