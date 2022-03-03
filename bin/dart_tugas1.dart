import 'dart:io';

void main(List<String> arguments) {
  String? input = stdin.readLineSync();
  int number = 0;
  if(input != null){
    number = int.parse(input);
  }
}
