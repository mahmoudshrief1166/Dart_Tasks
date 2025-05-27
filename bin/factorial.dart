import 'dart:io';

void main(List<String> arguments) {
  // Task 1: Factorial Calculator with CLI Input
  while (true) {
    stdout.writeln('Enter Number (or type q to quit):');
    String? value = stdin.readLineSync();

    if (value == 'q') {
      break;
    }

    if (value != null) {
      int? number = int.tryParse(value);

      if (number == null) {
        stdout.writeln('You Should Enter Only Numbers!');
      } else if (number < 0) {
        stdout.writeln('You Should Enter Only Positive Numbers!');
      } else if (number == 0) {
        stdout.writeln('The Factorial Of 0 is 1');
      } else {
        int factorial = 1;
        int originalNumber = number;

        while (number != 0) {
          factorial *= number!;
          number--;
        }

        stdout.writeln('The Factorial Of $originalNumber is $factorial');
      }
    } else {
      stdout.writeln('No input provided!');
    }
  }



}
