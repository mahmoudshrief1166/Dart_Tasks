import 'dart:io';

void main(List<String> arguments) {
  const String savedPin = '12345';
  double myBalance = 1000;

  stdout.writeln('Welcome to the ATM.');
  
  while (true) {
    stdout.write('Enter Your Pin: ');
    String? pinValue = stdin.readLineSync();

    if (pinValue != null && pinValue.trim() == savedPin) {
      break;
    } else {
      stdout.writeln(' Incorrect PIN. Try again.\n');
    }
  }

  while (true) {
    stdout.writeln('\n--- ATM Menu ---');
    stdout.writeln('1. Check Balance');
    stdout.writeln('2. Deposit');
    stdout.writeln('3. Withdraw');
    stdout.writeln('4. Exit');
    stdout.write('Enter your choice: ');
    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.writeln(' Your Balance is: ${myBalance.toStringAsFixed(2)}');
        break;

      case '2':
        stdout.write('Enter the amount of money you want to deposit: ');
        String? depositInput = stdin.readLineSync();
        double? depositAmount = double.tryParse(depositInput ?? '');
        if (depositAmount != null && depositAmount > 0) {
          myBalance += depositAmount;
          stdout.writeln(' \$${depositAmount.toStringAsFixed(2)} deposited successfully.');
        } else {
          stdout.writeln(' Invalid deposit amount.');
        }
        break;

      case '3':
        stdout.write('Enter the amount of money you want to withdraw: ');
        String? withdrawInput = stdin.readLineSync();
        double? withdrawAmount = double.tryParse(withdrawInput ?? '');
        if (withdrawAmount != null && withdrawAmount > 0) {
          if (withdrawAmount <= myBalance) {
            myBalance -= withdrawAmount;
            stdout.writeln(' \$${withdrawAmount.toStringAsFixed(2)} withdrawn successfully.');
          } else {
            stdout.writeln('Invalid balance.');
          }
        } else {
          stdout.writeln(' Invalid withdrawal amount.');
        }
        break;

      case '4':
        stdout.writeln(' Thank you for using our ATM. Goodbye!');
        return;

      default:
        stdout.writeln(' Invalid choice. Please try again.');
    }
  }
}
