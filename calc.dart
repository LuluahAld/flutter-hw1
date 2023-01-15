import 'dart:io';
import 'dart:math';


main() {
  double? a, b;
  int? operation;
  var menu = '''

Basic Calculator

1. Addition 
2. Subtraction
3. Multiplication
4. Division
5. Square root

To exit, type 0
  
Please select an operation (1,2,3,4,5):''';
while(true){
  print(menu);
  operation = int.parse(stdin.readLineSync()!);
  if (operation == 0) {
    exit(0);
  } else if (operation == 1 ||
      operation == 2 ||
      operation == 3 ||
      operation == 4) {
    stdout.write("Enter the first number:");
    a = double.parse(stdin.readLineSync()!);
    stdout.write("Enter the second number:");
    b = double.parse(stdin.readLineSync()!);
    switch (operation) {
      case 1:
        print("The addition of $a and $b = ${a + b}");
        break;

      case 2:
        print("The subtraction of $b from $a = ${a - b}");
        break;

      case 3:
        print("The Multiplication of $a and $b = ${a * b}");
        break;

      case 4:
        print("The division of $a by $b = ${a / b}");
        break;
    }
  } else if (operation == 5) {
    stdout.write("Enter the number:");
    a = double.parse(stdin.readLineSync()!);
    print("The square root of ${a} is ${sqrt(a)}");
  } else {
    print("Invalid input, try again");
  }
}
}
