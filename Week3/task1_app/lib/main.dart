import 'package:flutter/material.dart';
import './Widgets/calculator_button.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme:ThemeData(primarySwatch: Colors.blueGrey) ,
        themeMode: ThemeMode.system,
        home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key }) :super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num num1=0;
  num num2=0;
  String result='';
  String operation='';
  String textDisplay='';

  void onClickFunc(String buttonValue){
    print(buttonValue);
    if(buttonValue=='C'){
      textDisplay=' ';
      num1=0;
      num2=0;
      result=' ';
    }
    else if(buttonValue== '+' || buttonValue=='-'|| buttonValue=='x'|| buttonValue=='/' || buttonValue=='%'){
      num1=int.parse(textDisplay);
      result=' ';
      operation=buttonValue;
    }
    else if(buttonValue=='=') {
      num2 = int.parse(textDisplay);
      if (operation == '+') {
        result = (num1 + num2).toString();
      }
      if (operation == '-') {
        result = (num1 - num2).toString();
      }
      if (operation == 'x') {
        result = (num1 * num2).toString();
      }
      if (operation == '/') {
        result = (num1 / num2).toString();
      }
      if (operation == '%') {
        result = (num1 % num2).toString();
      }
    }
    else{
      result=int.parse(textDisplay + buttonValue).toString();
    }
    setState(() {
      textDisplay=result;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:const Text(
            'Calculator',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 10,
            ),
          ),
          centerTitle: true,
        ),
        body:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child:Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textDisplay,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text:'1',callback:onClickFunc),
                  CalculatorButton(text: '2',callback:onClickFunc),
                  CalculatorButton(text: '3',callback:onClickFunc),
                  CalculatorButton(text: '+',callback:onClickFunc),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text:'4',callback:onClickFunc),
                  CalculatorButton(text: '5',callback:onClickFunc),
                  CalculatorButton(text: '6',callback:onClickFunc),
                  CalculatorButton(text: '-',callback:onClickFunc),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text:'7',callback:onClickFunc),
                  CalculatorButton(text: '8',callback:onClickFunc),
                  CalculatorButton(text: '9',callback:onClickFunc),
                  CalculatorButton(text: 'x',callback:onClickFunc),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(text:'C',callback:onClickFunc),
                  CalculatorButton(text: '=',callback:onClickFunc),
                  CalculatorButton(text: '%',callback:onClickFunc),
                  CalculatorButton(text: '/',callback:onClickFunc),
                ],
              )
            ],
          ),
    );
  }
}
