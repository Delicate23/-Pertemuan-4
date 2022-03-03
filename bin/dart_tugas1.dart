import 'dart:io';

void main(List<String> arguments) {
  String? input = stdin.readLineSync();
  int number = 0;
  if(input != null){
    number = int.parse(input);
  }
  if(number%2==0) {
    int left = 1;
    int right = 4;
    for(int i = 0; i < number; i++)
      {
          for(int j = 0; j < (2 * number); j++)
          {
              if(left > 4){
                left = 1;
              }
              if(right < 1){
                right = 4;
              }
              if(i + j <= number - 1)  // upper left triangle
                  stdout.write(left++);
              else
                  stdout.write(" ");
              if((i + number) <= j)  // upper right triangle
                  stdout.write(right--);
              else
                  stdout.write(" ");
          }
          print("");
      }
  }
}
