import 'dart:io';

void main(List<String>arguments){
  while(true){
  stdout.writeln('Enter First Name or [q to exit] :');
  String? fname=stdin.readLineSync();
  if(fname=='q')break;

    stdout.writeln('Enter Last Name if you want or [q to exit] :');
  String? lname=stdin.readLineSync();
  if(lname=='q')break;

    stdout.writeln('Enter your title if you want or [q to exit] :');
  String? title=stdin.readLineSync();
  if(title=='q')break;

  formatname(firstname: fname,lastname: lname,title: title);
}
}

void formatname({required String? firstname,String? lastname,String? title}){
  if(firstname==null||firstname.trim().isEmpty){
    stdout.writeln('First Name Should Be Required.!');
  }

  String? utitle=(title!=null && title.trim().isNotEmpty)?title.trim():'Mr.';
  String? ulastname=(lastname!=null && lastname.trim().isNotEmpty)?lastname.trim():' ';

  if(firstname!=null){
  String? fullname='$utitle ${firstname.trim()}';
  
if(ulastname.isNotEmpty){
  fullname+=' $ulastname';
}

stdout.writeln('Full name is $fullname');
}
}