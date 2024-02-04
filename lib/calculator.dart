import 'dart:math' as math;

double add(double num1, double num2) {
  return num1 + num2;
}

double substract(double num1, double num2) {
  return num1 - num2;
}

double multiply(double num1, double num2) {
  return num1 * num2;
}

double divide(double num1, double num2) {
  return num1 / num2;
}

double power(double num1, double num2) {
  return math.pow(num1, num2).toDouble();
}
