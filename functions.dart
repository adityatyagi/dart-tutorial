void main() {
  print(square(2));
  print(add(1, 2));

  var a = [1, 2, 3];
  a.forEach((item) {
    print(item);
  });

  // as the num2 in subtract is optional
  print(subtract(2));

  // with optional paramter
  print(subtract(4, num2: 1));

  // positional + optional
  print(multiply(2));
  print(multiply(2, 3));
}

int square(var num) {
  return num * num;
}

int multiply(var num, [var num2]) => num * (num2 ?? 1);

// use null aware operator for optional named parameter
dynamic subtract(var num1, {var num2}) => num1 - (num2 ?? 0);

dynamic add(var a, var b) => a + b;
