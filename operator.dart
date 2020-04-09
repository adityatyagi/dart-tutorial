class Num {
  int num = 10;
}

void main() {
  int a = 1;
  int b = 2;
  int c = a + b;
  int d = a - b;
  int e = a * b;
  double f = a / b;

  print(c);
  print(d);
  print(e);
  print(f);

  // NULL AWARE OPERATORS
  print('-----------------------------');

  // var n = new Num();
  var n;

  int m = n?.num ?? 14; // if n=null, then m=14.

  print(m);

  var k;
  print(k ??= 100); // if k=null, then k=100
  print(k); // once value is assigned with ??=, then the value is fixed.

  print('-----------------------------');
  // TYPE TEST OPERATOR
  String l = '10';
  if (l is int) {
    print(l);
  } else {
    print('F is not a int');
  }

  print('-----------------------------');
  // LOOPS
  var a1 = [1, 2, 3];
  for (var item in a1) {
    print(item);
  }

  a1.forEach((item1) => {print(item1)});

  a1.forEach(printNum);
}

void printNum(num) {
  print(num);
}
