// class - All OOPS concepts works here

class Person {
  String firstName;
  String lastName;
  int age;
  final middleName;
  static const panId = 120;

  void printNames() {
    print(firstName);
    print(middleName);
    print(lastName);
    print(age);
  }

  // default constructor
  // Person(String firstName, String lastName, [int age = 18]) {
  //   this.firstName = firstName;
  //   this.lastName = lastName;
  //   this.age = age;
  // }

  // default constructor - if the class property names and the constructor variable names are same
  Person(this.firstName, this.middleName, this.lastName, [this.age = 18]);

  // named constructors
  Person.guest(String fName, this.middleName, String lName, [int age = 20]) {
    this.firstName = fName;
    this.lastName = lName;
    this.age = age;
  }
}

class Vehicle {
  String model;
  int year;

  // default constructor
  Vehicle(this.model, this.year);

  void showVehicleOutput() {
    print(model);
    print(year);
  }

  void methodToOverride() {
    print(
        'This will not be printed as the child will change my implementation');
  }
}

class Car extends Vehicle {
  double price;
  double oldPriceValue;

  Car(String model, int year, this.price) : super(model, year);

  // GETTER
  double get oldDoublePrice {
    return oldPriceValue;
  }

  // SETTER
  void set oldDoublePrice(double oldPrice) {
    oldPriceValue = oldPrice;
  }

  void printCarDetails() {
    // call class method on the Parent Class
    super.showVehicleOutput();
    print(price);
  }

  @override
  void methodToOverride() {
    print('I am changing the implementation of my parent\'s method');
  }
}

int mustBeGreaterThanZero(int val) {
  if (val < 0) {
    throw Exception('Value is less than zero');
  }
  return val;
}

void main() {
  var personObj = new Person('Ayush', 'Kumar', 'Tyagi', 22);
  personObj.printNames();

  // cannot change the middleName as it is "final"
  // personObj.middleName = 'FancyMiddleName';

  var personObj2 = new Person.guest('Aditya', 'Kumar', 'Tyagi', 32);
  personObj2.printNames();

  var newCar = new Car('1996-M123', 1996, 11000.11);

  // calling method on the Child Class
  newCar.printCarDetails();

  // calling method on the Parent Class
  newCar.showVehicleOutput();

  // calling the overrided method
  newCar.methodToOverride();

  // USING SETTER - setting the car's old price
  newCar.oldDoublePrice = 10000.110;

  // USING GETTER
  print(newCar.oldDoublePrice);

  try {
    mustBeGreaterThanZero(-1);
  } catch (e) {
    print(e);
  } finally {
    print('This block will run irrespective of success or fail');
  }

  // throwing a particular type of exception
  try {
    var result = 100 ~/ 0; // throws IntegerDivisionByZeroException
    print(result);
  } on IntegerDivisionByZeroException {
    print('When a IntegerDivisionByZeroException comes');
  } catch (e) {
    print(e);
  } finally {
    print('This block will run irrespective of success or fail 2');
  }
}
