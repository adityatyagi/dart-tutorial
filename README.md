# dart-tutorial
Codebase for basics of DART programming language

# NOTES

Dart is a static language. It is a strongly typed language. A string variable is a string. You cannot assign anything else to it.

Types of compilation  
1. AOT  
2. JIT

Importing packages in dart  
`import 'dart:<packageName>'`  

The `dart:core` package is automatically imported. No need to import it explicitly.  

To take input/output from user: `dart:io`  

## Comments
1. // in line comment  
2. /* */ Block Comments  
3. /// Documentation  

## DATA TYPES
- int, double, String, bool  
- dynamic - you can change the data type at runtime by assigning different types of values to it at runtime 
- num: A mix of int + double 

Dart compiler will assign the the obvious data type of `int` to the variable declared and intialised with a numeric value. If you use the variable `a` as a string, the dart compiler will throw error.  
`var a = 100;`  

`double` data type is used for floating values.  

You can always re-assign `dynamic` type variable to a different data type.  

Dart is object oriented programming language. Everything is a object here. Even the `null` type is an object.  

You can use `\` to escape special chars in strings or use " " to create a string with special characters.

`var a = 'It\'s a good day.';`  

`var b = "It's a good day.';`  

To print a RAW STRING, where you do not escape special characters, prefix `r` infront of the string.  

Multi-line strings  
1. '''  
2. """  

## TYPE CONVERSION
1. String -> int: `int.parse(<string>)`  
2. String -> double: `double.parse(<string>)`  

int.parse('2') = WORKS  
int.parse('Not a valid number in a string'); = ERROR  (FORMAT EXCEPTION)  

double.parse('10.12') = WORKS  
double.parse('Hey') = ERROR (FORMAT EXCEPTION)  

3. int -> String: `<integerValue>.toString()`  
4. double -> String: `<doubleValue>.toStringAsFixed(2)`  

You can use `assert()` to check for true/false of a statement.  
String oneAsString = 1.toString();
Eg. assert(oneAsString == '1')  

To check data type of a variable at runtime - `<variable>.runtimeType`  

By default, if you declare a variable but not initialise it, it will have `null` as its value.  

## OPERATORS

You have to keep in consideration all the possible results of a operator. For example, if division of two values results in a floating point number, then you cannot assign it to an `int`. You have to assign the value of division to a `double`.  

Null Aware Operators - (?.), (??), (??=)  

Type test operator  
int x = 10;  
if(x is int)  
{};  

## COLLECTIONS - LISTS, SETS, MAPS

### Lists (something like Arrays in JS)  
`List` is the class name  
List numbers = [1,2,3];  
var collOfNames = ['Aditya', 'Tyagi']; <---- `List` of type `String`  

`List<dynamic>` is also possible if a list contains mixed-data type data. [1,2,3, 'a'];  

List can be mutable as well as immutable.  
To make a list immutable at runtime i.e. once initialised, the list items cannot be changed, use `const`.  
For example: `List<String> collOfNames = const ['a', 'b'];`  

SHALLOW AND DEEP COPY of a LIST  
SHALLOW COPY  
var a = [1,2,3];  
var b = a;  

DEEP COPY  
var a = [1,2,3];  
var b = [...a];  

### Sets
Set is a collection of unique values. Redundunt values wont be stored. It is a object enclosing these unique values. 

Empty Set:  
`var emptySet1 = {};` --> WRONG  
`var emptySet2 = <String>{};` --> RIGHT  

### Map or (somehting like Objects in JS)
A collection of key-value pairs. 

Empty Map:  
`var emptyMap1 = {};` --> WRONG  
`var emptyMap2 = <String, int>{};` --> RIGHT  
`var emptyMap3 = new Map()` --> RIGHT  

## FUNCTIONS
Every function should have a return type.  
If the return type is not known, use `dynamic`.  
Once can avoid writing `void` infront of the functions returning nothing.  
Every parameter should have a type.  
`var` is like `any` from TypeScript. The data-type is decided during runtime.  

Functions can be named functions as well as anonymous functions (nameless).  

Named parameters v/s positional parameters  

**Positional Parameters:** same old parameters  
function add(var num1, var num2) => num1 + num2;  

Calling the function --> add(1,2);  

Making POSITIONAL PARAMETERS optional:  
function add(var num1, [var num2]) => num1 + (num2 ?? 0);  


**Named Parameters:** This is a new way. The parameters are in a object.  
function sum( {var num1, var num2} ) => num1 + num2;    

Calling the function --> add(num1: 1, num2: 2);  
Calling the function --> add(num2: 2, num1: 1);  

By default, the named parameters are optional. Use null aware operators for optional parameters.  

We can mix named and positional paramters.

With default value
function sum(var num1, {var num2=0} ) => num1 + num2;

With null aware operator
function sum(var num1, {var num2} ) => num1 + (num2 ?? 0);  

## CLASS

Constructor is used to define class variable values when a class instance is made.  

**Method 1**  

Person(String firstName, String lastName, [int age = 18]) {  
  this.firstName = firstName;  
  this.lastName = lastName;  
  this.age = age;  
}  

  

**Method 2**  
constructor - if the class property names and the constructor variable names are same  
`Person(this.firstName, this.lastName, [this.age = 18]);`  

**Types of Constructors**  
1. Default constructor --> Person()  
2. Named constructor --> Person.guest()  

While creating the instance, you can use either the default constructor or the named constructor  


THE `final` KEYWORD  

The `final` keyword in class has a special role. If a variable (object property) is declared with the `final` keyword, then:  
1. Data-type of that object property will be set when an instance of the class is created.  
2. Once initiated, the value of that variable will not be made.  
3. This is one way to create constant valued object properties. Once initialised by the instance of the class, it will not be changed later on.  
4. The `final` object properties has to be initialised. You cannot keep ignore it while creating either a default constructor or named constructor (if it isnt initialised).  
5. All the points 1-4 are for one particular instance of the class.

The `const` KEYWORD with `static`
1. The variables in the class which are declared as `static` and `const`, they cannot be changed during runtime. These are compile-time constants.  
2. You cannot access these **class properties** through an instance. Because these are `static`, you have to access them via the class name.  
3. You cannot declare a variable only `const`. Only `static` fields can be const.  
4. `static` means that the variable which is declared with the static keyword will have only 1 copy for all the instances of the class ever created. Basically, static is used for a constant variable or a method that is same for every instance of a class.  

DIFFERENCE BETWEEN `const` and `final`  
The major difference between the two is that inside the class, the `const` and the `final` keywords behave differently. The `final` keyword can be changed during runtime (but after it is assigned a value for an instance, it wll not be changed again for the same instance), whereas the `const` keyword declares the variable as constant for compile-time and it is same for every instance of the class.  

Outside the class, say in main(), the const and the final keywords act same.  

## INHERITANCE  
A class can inherit another class using the `extend` keyword.  

Using the `super` keyword in the child class, you can pass the values to the constructor of the parent class.  

To call the class methods on the parent from child, use `super.methodName()`.  

When you extend a Parent class to a Child Class, you have to make sure that if the constructor of the Parent class requires values, you have to assign the values using `super` via the Child class (from child class's constructor).  

## METHOD OVERRIDING

We use `@override` decorator for marking a method as a over-ridding method. Method overriding means to alter the implementation of the method, which has the same name as the method in the parent class.  

This is done when we dont have control over the super-class's methods (with the same name) implementation.  

If there is no method available on the super class and mark a the child class's method with `@override`, it will throw an error.  

In other words, `@override` allows a subclass or child class to provide a specific implementation of a method that is already provided by one of its superclasses or parent classes.  

If you forget to annotate the child class method with the `@override` decorator, the child class method will be called and parent's class method will be ignored, even though they have the same name.  

## GETTERS and SETTERS
Getters and setters are used to provide read and write access to object properties.  

Name of the getter and the setter has to be the same.  

Both the getter and the setter will have return types. The SETTER will have the return type of `void` and the GETTER will have the return type of the returned data.  

## EXCEPTION HANDLING

This is used to handle any runtime errors gracefully. If you have a piece of code which is prone to fail, then use `try`-`catch`-`finally` method to handle exceptions.  

To throw an Error/Exception manually, use the keyword `throw Exception('Error Message')`.  

Catching a particular type of Exception using the `on` keyword.  

 `var result = 100 ~/ 0;` ---> throws IntegerDivisionByZeroException  

 try {  
    var result = 100 ~/ 0;  
  } on IntegerDivisionByZeroException {  
    print('When a IntegerDivisionByZeroException comes');  
  }  





























