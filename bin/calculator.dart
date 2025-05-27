import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    stdout.writeln('Enter Number One or [ q for Exit ] :');
    String? value1 = stdin.readLineSync();
    if(value1=='q')break;
    double? num1 = double.tryParse(value1!);

    stdout.writeln('Enter Number Two [ q for Exit ] :');
    String? value2 = stdin.readLineSync();
        if(value2=='q')break;
    double? num2 = double.tryParse(value2!);

    stdout.writeln('Enter Operator [ q for Exit ] :');
    String? operator = stdin.readLineSync();
        if(operator=='q')break;

    calc(num1, num2, operator);
  }
}

void calc(double? x, double? y, String? opreator) {
  if (x != null && y != null && opreator != null) {
    switch (opreator) {
      case '+':
        double sum = x + y;
        stdout.writeln('$x + $y = $sum');

        break;

      case '-':
        double Sub = x - y;
        stdout.writeln('$x - $y = $Sub');

        break;

      case '*':
        double mul = x * y;
        stdout.writeln('$x x $y = $mul');

        break;

      case '/':
        if (y == 0) {
          stdout.writeln('You Can Not Divided By Zero!');
        } else {
          double div = x / y;
          stdout.writeln('$x / $y = $div');
        }

        break;

      default:
        stdout.writeln('invalid process!');
    }
  } else {
    stdout.writeln('Invalid Data');
  }
}
