import 'dart:io';

void main() {
  String text = "Enter Your Name :";
  stdout.writeln(text);
  String input = stdin.readLineSync();
  stdout.writeln(input);
}
