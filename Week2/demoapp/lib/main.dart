import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textToShow='0';
  int firstNumber=0;
  int secondNumber=0;
  String operator='NULL';
  String result=' ';
  double tempResult=0;
  void calculation(String buttonValue) {
      if (buttonValue == 'AC') {
        textToShow = ' ';
        firstNumber = 0;
        secondNumber = 0;
        result = ' ';
      }
      else if(buttonValue=='<-'){

      }
      else if (buttonValue == '+' || buttonValue == '-' || buttonValue == 'x' ||
          buttonValue == '/' || buttonValue == '%') {
        firstNumber = int.parse(textToShow);
        result = ' ';
        operator = buttonValue;
      }
      else if (buttonValue == '=') {
        secondNumber = int.parse(textToShow);
        if (operator == '+') {
          result = (firstNumber + secondNumber).toString();
        }
        if (operator == '-') {
          result = (firstNumber - secondNumber).toString();
        }
        if (operator == 'X') {
          result = (firstNumber * secondNumber).toString();
        }
        if (operator == '/') {
          result = (firstNumber / secondNumber).toString();
        }
        if (operator == '%') {
          result = (firstNumber % secondNumber).toString();
        }
      }
      else {
        result = int.parse(textToShow + buttonValue).toString();
      }
      setState(() {
        textToShow = result;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator',style:TextStyle(fontSize: 40,fontWeight: FontWeight.w900),)
      ),
      body:
      Container(
        alignment: const Alignment(-1,1),
        color: const Color(0xFF15152e),
        child: Container(
          width: 400,
          height: 500,
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 300,
                height: 60,
                alignment: Alignment.centerRight,
                child: Text(
                  textToShow,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(value:'AC', buttonPressing:calculation,font_Size: 12,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5),),
                    MyButton(value:'<-', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                    MyButton(value:'%', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                    MyButton(value:'/', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(value:'7', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'8', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'9', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'X', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(value:'4', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'5', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'6', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'-', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(value:'1', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'2', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'3', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'+', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(value:'0', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'00', buttonPressing:calculation,font_Size: 14.2,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'000', buttonPressing:calculation,font_Size: 9,buttonColor: Colors.blue,buttonRadius: 0,borderColor: const Color(0xff5454c5)),
                  MyButton(value:'=', buttonPressing:calculation,font_Size: 20,buttonColor: Colors.orangeAccent,buttonRadius: 25,borderColor: const Color(0xff5454c5)),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
