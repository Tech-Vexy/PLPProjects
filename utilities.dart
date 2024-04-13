// Task 1: Function to return the sum of two numbers
int sum(int num1, int num2) {
  return num1 + num2;
}

// Task 2: For loop to print numbers from 1 to 10
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Switch statement for different string values
void checkStringValue(String value) {
  switch (value) {
    case 'hello':
      print('Hello to you too!');
      break;
    case 'bye':
      print('Goodbye!');
      break;
    default:
      print('Unrecognized value');
  }
}

// Task 4: While loop to print numbers from 20 to 10
void countdown() {
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }
}

// Task 5: If-else statement to check if a number is even or odd
void checkEvenOdd(int num) {
  if (num % 2 == 0) {
    print('$num is even.');
  } else {
    print('$num is odd.');
  }
}

// Task 6: Function to find the largest number in a list
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

// Task 7: Try-catch block to catch an exception
void tryCatchDemo() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Caught an exception: $e');
  }
}

void main() {
  // Example usage:
  print('Sum of 3 and 4 is: ${sum(3, 4)}');
  printNumbers();
  checkStringValue('hello');
  countdown();
  checkEvenOdd(5);
  print('The largest number is: ${findLargest([1, 2, 3, 4, 5])}');
  tryCatchDemo();
}
