num addTwo(num num1,num num2) {
  return num1+num2;
}
num subtractTwo(num num1,num num2) {
  return num1-num2;
}
num multiplyTwo(num num1,num num2) {
  return num1*num2;
}
num divideTwo(num num1,num num2) {
  return num1/num2;
}
int stringLength(String string) {
  return stringLength(string);
}
String getFirstElement(List<String> myList) {
  return myList[0];
}
void main () {
  num num1 = 200;
  num num2 = 100;
  List<String> names = ["Evelia","John","Mark"];
  print("Sum: ${addTwo(num1, num2)}");
  print("Subtraction: ${subtractTwo(num1, num2)}");
  print("Multiplication: ${multiplyTwo(num1, num2)}");
  print("Division: ${divideTwo(num1, num2)}");
  print("First Element: ${getFirstElement(names)}");
}