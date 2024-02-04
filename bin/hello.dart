import 'dart:io';
import 'package:hello/calculator.dart' as calculator;

void main(List<String> arguments) {
  task1();
  task2();
}

void task2() {
  print("Enter first line: ");
  String line1 = stdin.readLineSync() ?? "";
  print("Enter second line: ");
  String line2 = stdin.readLineSync() ?? "";
  print("Concantination: $line1$line2");

  print("Enter line to reverse: ");
  String lineToReverse = stdin.readLineSync() ?? "";
  print("Reverse: ${lineToReverse.split('').reversed.join('')}");

  print("Enter line to count chars: ");
  String lineToCount = stdin.readLineSync() ?? "";
  int count = lineToCount.split('').where((char) => char != ' ').length;
  print("Count of chars without spaces: $count");

  print("Enter source line: ");
  String sourceLine = stdin.readLineSync() ?? "";
  print("Enter sub line to search");
  String subLine = stdin.readLineSync() ?? "";
  int subLineIndex = sourceLine.indexOf(subLine);
  if (subLineIndex == -1) {
    print("There is no such sub line in text");
  } else {
    print(
        "The first enterence of sub line \"$subLine\" on position: $subLineIndex");
  }
}

void task1() {
  double num1 = getNumber();
  String op = getOperation();
  double num2 = getNumber();

  if (op == "/" && num2 == 0) {
    print("Cannot divide by 0");
    return;
  }

  switch (op) {
    case "+":
      print(calculator.add(num1, num2));
      break;
    case "-":
      print(calculator.substract(num1, num2));
      break;
    case "*":
      print(calculator.multiply(num1, num2));
      break;
    case "/":
      print(calculator.divide(num1, num2));
      break;
    case "^":
      print(calculator.power(num1, num2));
      break;
  }
}

double getNumber() {
  const bool flag = true;
  print("Enter number: ");

  while (flag) {
    String? strNum = stdin.readLineSync();

    if (strNum == null) {
      print("Please enter valid number: ");
      continue;
    }

    double? num = double.tryParse(strNum);
    if (num == null) {
      print("Please enter valid number: ");
      continue;
    }

    return num;
  }
}

String getOperation() {
  const bool flag = true;
  print("Enter operation(+, -, *, /, ^): ");

  while (flag) {
    String? op = stdin.readLineSync();

    if (op == null) {
      print("Please enter valid operation: ");
      continue;
    }

    switch (op) {
      case "+":
        return "+";
      case "-":
        return "+";
      case "*":
        return "+";
      case "/":
        return "/";
      case "^":
        return "^";
      default:
        print("Please enter valid operation: ");
        continue;
    }
  }
}
