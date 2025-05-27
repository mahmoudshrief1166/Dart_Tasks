import 'dart:io';

void main(List<String> arguments) {


//Task 2: Palindrome Checker with CLI Input
   while(true){
    stdout.writeln('Enter String to check if is [Palandrome or q to Exit]');
    String?  word=stdin.readLineSync();
    if(word=='q'){
      break;
    }
    isaplandrome(word);
   }

}
String isaplandrome(String? word){

    if(word!=null){
      String cleanword=word.replaceAll(' ', '').toLowerCase();

      String reverse=cleanword.split('').reversed.join();

      if(cleanword==reverse){
        stdout.writeln('Yes, Is Palandrome.');
      }else{
        stdout.writeln('No, Is not Palandrome.');
      }
    }
  
  return '';
}