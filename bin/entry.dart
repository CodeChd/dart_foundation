void main() {
  // int num1 = 1;
  // double num2 = 3.0;
  // bool isTrue = false;

  // print((num1 + num2) is int); IS operator look at the sum of variable if it's INTEGER or DOUBLE (true or false)
  // print((num1 + num2).runtimeType);  look at the sum variable result DATA TYPE!

  // String str = 'hello';

  // print(str);
// template literal or string interpolation
  // print('$str John Doe ${str is String}');

  // reassigned variable using VAR === dynamic is bad practice but has it use cases!!

  // var users;
  // Reasignnable by default just like every var
  // users = "John Doe";

  // var username = 1.9; infer type automatically

  // final type variable is to specify a variable that should not be reasigned like CONST
  // final String str = 'Carl';
  // str = 'hello';

  // Const like final , but is an immutable compile time basically a fixed value
  // const int age = 75;
  // const int favnum = num1 + 1;

  // variables cannot be assigned to null
  // int? age;  assign a null value

  // print(age == null); this is equals to true

  // late final String ssize; by default you need to assign value when using Final but with LATE it will set it to null in the
  // meantime and remove it later when the value is reassigned

  // ssize = 'helllo';

  // print(ssize);

// You need to explicitly use a method to check whether the variable is empty or not that is quite the opposite of js
  // String thing1 = '';
  // if (thing1.isEmpty) print("trure");

  //assert takes a condition as a argument/parameter if its false it will raise an error in debug mode if its true nothing happens

  // String namw = "Carl";

  // assert(namw.runtimeType is int);

// default return TYPE is NULL if TYPE is not defined
  // String highFive(int numba) {
  //    POsitional parameters which means order of arguments/parameter matters
  //   return '$numba is my favorite numba and a';  it will automatically infer the type of the function based on returned value
  // }

  // var str = highFive(544);

  // print('$str wet pillow');

  //make a NAMED arguments/parameter order doesn't matter and one of best practices in dart and flutter
  // namedParams({required int a, int b = 5}) {
  //   return a - b;
  // }

  // var named = namedParams(a: 23, b: 34);

  // print('$named wet pillow');

  // Arrow Function

  // taketen(int num) => '$named number is not equal to $num';
  // taketen(23);

  // print(taketen(23));

  // Callback Function
  // callIT(Function callback) {
  //   var yIY = callback();
  //   return 'Result: $yIY';
  // }

  // final hello = callIT(() => "hello");

  // print(hello);

// Iterable objects called List or array in javascript and other languages
  // List<int> listNumbers = [1, 2, 3, 4, 5, 10];

  // listNumbers[0];

//  listNumbers.sublist(2,5) // return only in between of the 2 arguments

  // print(listNumbers.sublist(2, 5));

  // var list1 = List.filled(20, "boh wo woah"); fill list woth 20 values index

// to know the length of items inside the list

  // listNumbers.length;
  //listNumbers.last // get the last item inside of the list
  //listNumbers.first // get the first item inside of the list

  //listNumbers.add(4) //push
  // listNumbers.removeLast(); //pop

// dart also use foreach and maps methods to iterate values of list or objects inside lists
  // listNumbers.forEach((e) => print(e));
  // listNumbers.map((e) => e*2);

  //dart also use spread operator like js to concatenante the list inside other LIST > one of the iterables
  // var arrayItems = [...listNumbers, ...listNumbers];

//   bool depressed = false;
// var cart = [
//     'milk',
//     'eggs',
//     if (depressed) 'Vodka'
// ]; //helpful for showing list item base on a certain condition

  // print(arrayItems);

  // MAPS! like objects in javascript or hashmap in other languages

  // Map<String, dynamic> book = {
  //   "title": "Moby movies",
  //   'author': "Herman",
  //   'pages': 752
  // };
// access maps values
  // book['title'];
  // book['author'] = "hotaro"; // assigns a value
  // book['pages'];

  // book.keys;
  // book.values;
  // book.values.toList();

  // DIRECTLY Acess key and values inside MAPS

// frst method
  // for (MapEntry b in book.entries) {
  //   print('Key ${b.key}, Value ${b.value}');
  // }

  //scnd method

  // book.forEach((key, value) => print('Key $key, Value $value'));

  // print(book.values.toList());

  //Classes
// class is a bluprint of an object that allows us to make or design custom objecst by combining different data types

  // Onichan thing = Onichan(69);

  // print(thing.score);
  // print(thing.anoGawaMo());

// classes initialization should be outside of void main entry point
//{// to access data inside the class just use the dot notation just like accessing a object or MAPS here on dart
// class Onichan {
// // instance member a data or functionality attach to object
//   int score;

//   // to pass a value externally to the class dart classes has constructor function that runs only when the object is inititiated

//   Onichan(this.score);

//   // another functionality class has is a method or a function. function inside the class also automatically have access to instance members
//   //instance varibles inside the class

//   anoGawaMo() {
//     print('Your Score is $score');
//   }
// }

  // var yuck = Rectangles(25, 67); Positional Argument
  var yuck = Rectangles(width: 45, height: 67);
  yuck.area;

  print(yuck.area);
}

class Rectangles {
  // final int width; this two are like for positional arguments
  // final int height;
  late final int area;
  String? naem; // adding addtional parameters/arguments

  // Rectangles(this.height, this.width, [this.naem]) { this one too1
  //   area = width * height;
  // }

  Rectangles({required int width, required int height}) {
    // for initiating named argument
    area = width * height;
  }
}
