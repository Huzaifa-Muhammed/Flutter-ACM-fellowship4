import 'dart:io';

void main() {
  String text = "Enter Your Name :";
  stdout.writeln(text);
  String input = stdin.readLineSync();
  stdout.writeln(input);
}


void main() async {
  futureFunction();   // will execute this lines and when this function's time completed then print this function
  var myMap = Map();
  myMap = {651: "Huzaifa", 657: "Mahad", 683: "Faizan"};
  print(myMap[651]);
  await listDisplay();  // will wait for this funtion's delay to be completed then execute next line "due to await"
  print(myMap[683]);
}

Future futureFunction() async {
  Future.delayed(Duration(seconds: 1)).whenComplete(() => print("Future done"));
}

Future listDisplay() async {
  var myList = ["Huzaifa from List", "Mahad", "Faizan"];
  myList.add("Huziafa");
  await Future.delayed(Duration(seconds: 3))
      .whenComplete(() => print(myList[0]));
}
